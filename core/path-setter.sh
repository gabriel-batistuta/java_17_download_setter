SHELL= $(echo $0)

if grep -q "zsh" <<< "$SHELL"; then
    shell="zsh"
    echo "export PATH=$PATH:/usr/lib/jvm/jdk-17/bin" >> ~/.zshrc
    echo "export JAVA_HOME=/usr/lib/jvm/jdk-17" >> ~/.zshrc
    
elif grep -q "bash" <<< "$SHELL"; then
    shell="bash"
    echo "export PATH=$PATH:/usr/lib/jvm/jdk-17/bin" >> ~/.bashrc
    echo "export JAVA_HOME=/usr/lib/jvm/jdk-17" >> ~/.bashrc
    echo "$shell"

fi

echo "JAVA_HOME and Java path added to your $shell in ~/.bashrc or ~/.zshrc"