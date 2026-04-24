# 🚀 Roadmap — Fechadura Eletrônica em FPGA

Este documento apresenta o progresso do desenvolvimento do projeto de fechadura eletrônica, destacando o que já foi concluído, o que está em andamento e os próximos passos.

---

## 📌 Visão Geral

- 🎯 Objetivo: Desenvolver uma fechadura eletrônica em FPGA utilizando SystemVerilog
- 🧩 Arquitetura modular:
  - Teclado
  - Operacional
  - Setup
  - Display
- ⚙️ Abordagem:
  - Simulação
  - Síntese
  - Testes em hardware

---

## ✅ Concluído

- [x] Definição da arquitetura do sistema
- [x] Modelagem inicial do projeto
- [x] Implementação do módulo de teclado
- [x] Sistema de leitura do teclado matricial
- [x] Implementação de debounce
- [x] Conversão de teclas para BCD
- [x] Armazenamento de até 20 dígitos
- [x] Implementação de timeout de entrada (5s)
- [x] Tratamento das teclas especiais (* e #)
- [x] Simulação do módulo de teclado
- [x] Síntese validada em FPGA

---

## 🚧 Em Desenvolvimento

- [ ] Integração inicial entre módulos
- [ ] Estrutura base do módulo operacional
- [ ] Definição dos estados principais do sistema
- [ ] Comunicação entre teclado e operacional

---

## 🔜 Próximos Passos

### 🔷 Módulo Operacional
- [ ] Implementar validação de senha
- [ ] Implementar controle da tranca
- [ ] Implementar controle de tentativas
- [ ] Implementar bloqueio por erro
- [ ] Implementar controle do bip
- [ ] Implementar lógica de porta (aberta/fechada)

---

### 🔷 Módulo Setup (Configuração)
- [ ] Implementar entrada no modo configuração
- [ ] Implementar autenticação (senha master)
- [ ] Implementar navegação do menu
- [ ] Implementar configuração de tempos
- [ ] Implementar configuração de senhas
- [ ] Integração com módulo operacional

---

### 🔷 Módulo Display
- [ ] Implementar driver de display 7 segmentos
- [ ] Exibir valores no modo operacional
- [ ] Exibir menus no modo configuração
- [ ] Exibir erros e estados do sistema

---

### 🔷 Integração Final
- [ ] Integração de todos os módulos
- [ ] Testes completos do sistema
- [ ] Testes em FPGA
- [ ] Ajustes de timing e desempenho

---

## 🧪 Testes e Validação

- [ ] Testes de integração entre módulos
- [ ] Testes de entrada inválida
- [ ] Testes de timeout
- [ ] Testes de múltiplas tentativas
- [ ] Testes de configuração
- [ ] Testes com hardware real

---

## 🎯 Melhorias Futuras (Opcional)

- [ ] Interface mais intuitiva no display
- [ ] Log de tentativas de acesso
- [ ] Sistema de múltiplos usuários
- [ ] Comunicação com sistemas externos (IoT)
- [ ] Aplicação mobile/web para controle

---

## 🧠 Observações

- O projeto está sendo desenvolvido de forma modular, permitindo evolução incremental.
- O código-fonte completo do design será disponibilizado posteriormente.
- A documentação está sendo construída paralelamente ao desenvolvimento.

---
