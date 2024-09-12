#!/bin/bash
set -e
compile_and_run() {
    local source_file="$1"
    shift
    local output_file="/tmp/$(basename "${source_file%.c}").out"
    cc -o "$output_file" "$source_file"
    "$output_file" "$@"
    rm "$output_file"
}

if [ $# -eq 0 ]; then
    SOURCE_FILES=$(ls *.c 2>/dev/null)
    if [ -z "$SOURCE_FILES" ]; then
        echo "error: カレントディレクトリに.cファイルが見つかりません。"
        exit 1
    fi
    for file in $SOURCE_FILES; do
        compile_and_run "$file"
    done
else
    SOURCE_FILE="$1"
    shift
    compile_and_run "$SOURCE_FILE" "$@"
fi
