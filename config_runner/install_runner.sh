# Link para a última versão estável
# https://docs.gitlab.com/runner/install/bleeding-edge.html#download-any-other-tagged-release
DOWNLOAD_URL=https://s3.dualstack.us-east-1.amazonaws.com/gitlab-runner-downloads/latest/binaries/gitlab-runner-linux-amd64
# Esse diretório está automaticamente no path do sistema
DEST_DIR=/usr/local/bin

sudo wget -nv $DOWNLOAD_URL -O $DEST_DIR/gitlab-runner
sudo chmod +x $DEST_DIR/gitlab-runner

# Verifica se o comando está no path
cd $HOME
gitlab-runner --version
