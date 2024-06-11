

CodeChecker analyze ./compile_commands.json --output ./reports --enable sensitive --ctu
CodeChecker parse -e html ./reports/ -o ./reports_html
CodeChecker server &
sleep 2
CodeChecker store ./reports -n static_analysis_test
