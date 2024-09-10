chmod +x compile_run.sh
chmod +x compile_run_w3.sh

current_dir=$(pwd)
echo "alias ccx='$current_dir/compile_run.sh'" >> ~/.zshrc
echo "alias cx='$current_dir/compile_run_w3.sh'" >> ~/.zshrc

echo "install success"