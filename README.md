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

# SafeBadge-CI

Projeto: SafeBadge — Fase 2: CI/CD com Docker e GHCR

## Estrutura:
- Aplicação Python/Flask em app/
- Testes automatizados em tests/
- Pipeline CI/CD em .github/workflows/ci-cd.yml
- Containerização com Docker/Docker Compose
- Deploy automatizado via deploy/deploy.sh
