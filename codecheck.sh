

CodeChecker analyze ./compile_commands.json --output ./reports --enable sensitive --ctu
CodeChecker parse -e html ./reports/ -o ./reports_html
CodeChecker server &
CodeChecker store ./reports -n static_analysis_test
