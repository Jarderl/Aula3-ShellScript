# 🔎 Tool-Work — Network Scan Toolkit

Ferramenta em **Bash** para estudos de **varredura de rede**, **port scanning** e **descoberta de hosts**, utilizando diferentes técnicas e utilitários do sistema Linux.

> ⚠️ **Aviso legal:** este projeto é destinado **exclusivamente para fins educacionais**, laboratórios próprios e ambientes autorizados. O uso em redes de terceiros sem permissão pode ser ilegal.

---

## 📌 Sobre o Projeto

O **Tool-Work** reúne, em um único script, múltiplas abordagens para:

- Port Scan
- Ping Sweep
- Descoberta de hosts ativos
- Comparação de técnicas de varredura

O objetivo é demonstrar **como diferentes ferramentas e métodos se comportam em cenários reais**, auxiliando no aprendizado de redes, segurança ofensiva e defensiva.

---

## 🧠 Técnicas Utilizadas

- **Hping3**
  - Port Scan TCP SYN
  - Ping Sweep (ICMP)
- **Netcat (nc)**
  - Port Scan
  - Descoberta de hosts por porta específica
- **/dev/tcp/**
  - Ping Sweep
  - Port Scan sem ferramentas externas

---

## ⚙️ Requisitos

- Linux
- Bash
- hping3
- netcat (nc)
- Permissões de sudo (para hping3)

Instalação dos requisitos (Debian/Ubuntu):
```bash
sudo apt update
sudo apt install hping3 netcat -y
