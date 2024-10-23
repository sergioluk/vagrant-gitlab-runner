# Runner Gitlab CI utilizando Vagrant

## Visão Geral
Este projeto mostra a instalação e configuração de um runner Gitlab CI com executor docker. O Runner é instalado e executado em uma VM Linux Ubuntu 22.04-LTS (Jammy64) criada via Vagrant, e é configurada automaticamente através dos seguintes scripts:
- `config_runner/install_docker.sh`: instala o Docker na versão mais atual
- `config_runner/install_runner.sh`: instalar o `gitlab-runner` a partir do binário estável mais recente (`latest`). Deixa o executável disponível no path em `/usr/local/bin`
- `config_runner/register_runner.sh`: registrar o runner no projeto gitlab. **Primeiramente é necessário editar o script para incluir o token do projeto**.

## Pré-requisitos
- [VirtualBox 7.0.x](https://www.virtualbox.org/wiki/Download_Old_Builds_7_0) instalado e configurado
- [Vagrant 2.4.x](https://developer.hashicorp.com/vagrant/downloads) instalado e [configurado](https://developer.hashicorp.com/vagrant/docs/installation)

## Instruções de uso
- Edite o arquivo `config_runner/register_runner.sh`, adicionando o token de registro do seu projeto Gitlab na variável `TOKEN=` e salve o arquivo. Exemplo: `TOKEN=asdfg-1234`
- Suba a VM com `vagrant up` e aguarde o provisionamento
- Após o provisionamento da máquina, logue nela com `vagrant ssh`
- Para executar o runner, digite `gitlab-runner run` dentro da máquina virtual
- Verifique no seu projeto do Gitlab que o runner foi registrado com sucesso e está online, acessando `Configurações => CI/CD => Runners|Executores de projeto designados`
