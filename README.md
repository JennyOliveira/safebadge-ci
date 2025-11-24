# SafeBadge-CI

Projeto: SafeBadge — Fase 1: Configuração e Automação Inicial (CI)

## Estrutura
- Aplicação Python simples em `app/`
- Testes automatizados em `tests/`
- Pipeline de CI em `.github/workflows/ci.yml`
- Infraestrutura como Código (IaC) usando Terraform em `terraform/`

## Objetivo
Automatizar build, testes e provisionamento de infraestrutura usando boas práticas de DevOps.

# Relatório — SafeBadge (Fase 2)
Nesta fase foi implementada a containerização da aplicação, pipeline CI que executa testes e lint e build da imagem Docker com push para o GitHub Container Registry (GHCR). Inclui também script de deploy pronto para uso em servidor com Docker

# SafeBadge — Fase 2 (CD e Containerização)

## O que foi implementado (Fase 2)
- Containerização com Docker (Dockerfile)
- Orquestração local com docker-compose
- GitHub Actions: testes (pytest), lint (flake8), build e push da imagem para GHCR
- Script de deploy (`deploy/deploy.sh`) pronto para uso em servidor Docker
