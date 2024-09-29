#!/bin/bash

# Function to install OpenSSL
install_openssl() {
    echo "Installing OpenSSL..."
    
    # Check if Homebrew is installed (macOS)
    if command -v brew >/dev/null 2>&1; then
        brew reinstall openssl@3
        echo "OpenSSL has been installed using Homebrew."
    else
        # Assume Linux for other installations
        sudo apt update
        sudo apt install -y openssl libssl-dev
        echo "OpenSSL has been installed using APT."
    fi
}

# Function to configure OpenSSL environment variables
configure_openssl_env() {
    echo "Configuring OpenSSL environment variables..."
    
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        export PATH="/usr/local/opt/openssl@3/bin:$PATH"
        export LDFLAGS="-L/usr/local/opt/openssl@3/lib"
        export CPPFLAGS="-I/usr/local/opt/openssl@3/include"
        echo "OpenSSL environment configured for macOS."
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        export LD_LIBRARY_PATH="/usr/local/lib:$LD_LIBRARY_PATH"
        echo "OpenSSL environment configured for Linux."
    fi

    # Create OpenSSL configuration directory and file
    mkdir -p ~/.openssl
    echo "[openssl_init]" > ~/.openssl/openssl.cnf
    echo "providers = provider_sect" >> ~/.openssl/openssl.cnf
    echo "[provider_sect]" >> ~/.openssl/openssl.cnf
    echo "default = default_sect" >> ~/.openssl/openssl.cnf
    echo "legacy = legacy_sect" >> ~/.openssl/openssl.cnf
    echo "[legacy_sect]" >> ~/.openssl/openssl.cnf

    export OPENSSL_CONF=~/.openssl/openssl.cnf

    # Optionally add to .bashrc or .bash_profile
    echo "export PATH=\"$PATH\"" >> ~/.bashrc
    echo "export LDFLAGS=\"$LDFLAGS\"" >> ~/.bashrc
    echo "export CPPFLAGS=\"$CPPFLAGS\"" >> ~/.bashrc
    echo "export LD_LIBRARY_PATH=\"$LD_LIBRARY_PATH\"" >> ~/.bashrc
    echo "export OPENSSL_CONF=\"~/.openssl/openssl.cnf\"" >> ~/.bashrc

    echo "Environment variables added to .bashrc. Please restart your terminal or run 'source ~/.bashrc'."
}

# Check if OpenSSL is installed and the version
if ! openssl version | grep -q "OpenSSL 3"; then
    echo "OpenSSL version 3 is not installed."
    install_openssl
else
    echo "OpenSSL 3 is already installed."
fi

# Configure OpenSSL environment
configure_openssl_env

echo "OpenSSL setup completed."
