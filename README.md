# Códigos e projetos de programação

Repositório de exercícios e projetos desenvolvidos durante a graduação em Engenharia de Computação. Os arquivos estão organizados primeiro por linguagem e, dentro de cada linguagem, por tipo de projeto.

[![Build](https://github.com/matamboni/codigos_c/actions/workflows/build.yml/badge.svg)](https://github.com/matamboni/codigos_c/actions/workflows/build.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

## Estrutura

```text
codigos_c/
├── c/
│   ├── console/
│   │   ├── array_occurrence_counter.c
│   │   ├── barbershop_menu.h
│   │   ├── barbershop_scheduler.c
│   │   ├── movie_catalog_writer.c
│   │   ├── number_guessing_game.c
│   │   └── sequence_min_max.c
│   └── embedded/
│       └── pic16f877a/
│           └── led_blink.c
├── cpp/
│   ├── embedded/
│   │   └── pic16f877a/
│   │       └── water_tank_controller.cpp
│   └── exercises/
│       └── random_number_exercise.cpp
├── .github/
├── Makefile
└── LICENSE
```

Novas linguagens podem ser adicionadas como diretórios no mesmo nível de `c/` e `cpp/` (por exemplo, `python/`, `java/` ou `rust/`), com subdiretórios organizados por finalidade.

## Programas em C

| Programa | Descrição |
|---|---|
| [`c/console/array_occurrence_counter.c`](c/console/array_occurrence_counter.c) | Conta quantas vezes um valor aparece em um vetor. |
| [`c/console/number_guessing_game.c`](c/console/number_guessing_game.c) | Jogo de adivinhação com níveis de dificuldade. |
| [`c/console/movie_catalog_writer.c`](c/console/movie_catalog_writer.c) | Registra dados de filmes em um arquivo. |
| [`c/console/sequence_min_max.c`](c/console/sequence_min_max.c) | Encontra o maior e o menor valor de uma sequência. |
| [`c/console/barbershop_scheduler.c`](c/console/barbershop_scheduler.c) | Simula o agendamento de serviços de uma barbearia; usa [`barbershop_menu.h`](c/console/barbershop_menu.h). |
| [`c/embedded/pic16f877a/led_blink.c`](c/embedded/pic16f877a/led_blink.c) | Exemplo de acionamento de LED no PIC16F877A. |

## Programas em C++

| Programa | Descrição |
|---|---|
| [`cpp/exercises/random_number_exercise.cpp`](cpp/exercises/random_number_exercise.cpp) | Exercício de estudo com geração de números aleatórios. |
| [`cpp/embedded/pic16f877a/water_tank_controller.cpp`](cpp/embedded/pic16f877a/water_tank_controller.cpp) | Projeto de automação de reservatórios com LCD para PIC16F877A. |

## Compilação

É necessário ter `gcc` e `make` instalados. No Ubuntu/Debian:

```bash
sudo apt-get update
sudo apt-get install -y build-essential
```

No Windows, use o shell do MSYS2 ou o WSL, com `make` disponível no `PATH`.

Para compilar os programas de console em C:

```bash
make
```

Os executáveis são criados em `out/`. Os projetos embarcados não fazem parte desse build: eles dependem do toolchain e das bibliotecas do MPLAB X/XC8, além das configurações específicas do PIC.

Depois que o diretório `out/` existir, é possível compilar um programa individual:

```bash
gcc -Wall -Wextra -std=c11 c/console/array_occurrence_counter.c -o out/array_occurrence_counter
```

Para remover os executáveis gerados:

```bash
make clean
```

## Integração contínua

O workflow [`.github/workflows/build.yml`](.github/workflows/build.yml) executa `make` em pushes e pull requests para `main`.

## Autoria

**Matheus Costa Amboni**

Alguns trabalhos foram desenvolvidos em dupla com **Antônio Pedro Chacarosque**.

## Licença

Distribuído sob a licença [MIT](LICENSE).
