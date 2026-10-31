#!/bin/bash
set -e

dnf update -y
dnf install -y docker awscli-2

systemctl enable --now docker
usermod -aG docker ec2-user
