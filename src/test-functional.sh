#!/bin/bash
testcase_dir=$2
test_name=$1

func_testcase_dir=$(realpath $(dirname "$0")/./${testcase_dir})

# 初始化计数器
total_tests=0
passed_tests=0
failed_tests=0
failed_files=()

test_single() {
    test_file=`realpath --relative-base=$func_testcase_dir $func_testcase_dir/$1.tea`	
    test_name=${test_file%.tea}
    
    echo -n $test_name
    echo ": "

    ./compiler $func_testcase_dir/$test_name.tea
    if [ $? != 0 ]; then
        echo fail compiler
        failed_tests=$((failed_tests + 1))
        failed_files+=("$test_name")
        return
    fi

	aarch64-linux-gnu-gcc -c sylib.c -o sylib/sylib.o -g
	aarch64-linux-gnu-gcc -c $func_testcase_dir/$test_name.S -o output/$test_name.o --static -g
    aarch64-linux-gnu-gcc output/$test_name.o sylib/sylib.o -o output/$test_name --static -g
    if [ $? != 0 ]; then
        echo "fail to compile"
        failed_tests=$((failed_tests + 1))
        failed_files+=("$test_name")
        return
    fi

    ARCH=$(uname -m)
    if [ -f $func_testcase_dir/$test_name.in ]; then
        qemu-aarch64 ./output/$test_name < $func_testcase_dir/$test_name.in > output/$test_name.out
    else
        qemu-aarch64 ./output/$test_name > output/$test_name.out
    fi
    echo -e $? >> ./output/$test_name.out
    diff -Bb ./output/$test_name.out $func_testcase_dir/$test_name.out > /dev/null 2>/dev/null
    if [ $? == 0 ]; then
        echo pass
        passed_tests=$((passed_tests + 1))
    else
        echo fail
        echo "Expect:"
        cat $func_testcase_dir/$test_name.out
        echo "Got:"
        cat ./output/$test_name.out
        failed_tests=$((failed_tests + 1))
        failed_files+=("$test_name")
    fi
}

main() {
    for testcase in $(ls $func_testcase_dir/*.tea); do
        test_name=$(basename $testcase .tea)
        test_single $test_name
        total_tests=$((total_tests + 1))
    done

    # 输出测试结果
    echo "===================="
    echo "Total tests: $total_tests"
    echo "Passed tests: $passed_tests"
    echo "Failed tests: $failed_tests"
    if [ $failed_tests -ne 0 ]; then
        echo "Failed files:"
        for file in "${failed_files[@]}"; do
            echo "  - $file"
        done
    fi
}

main $@