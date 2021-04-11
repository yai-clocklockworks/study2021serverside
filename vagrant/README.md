# 環境構築

1. VirtualBoxのインストール

1. Vagrantのインストール

    vagrant-vbguestのインストール

1. 起動

```
vagrant up
vagrant vbguest
vagrant ssh
vagrant reload
vagrant halt
```

* ファイル同期に失敗する場合

仮想環境ログイン後、下記コマンド

```
sudo yum install -y --enablerepo=C*-base --enablerepo=C*-updates kernel-devel-`uname -r`
```

その後box再起動（`vagrant reload`）

1. Ruby環境

`../src/provision.sh`参照

`http://localhost:3000`