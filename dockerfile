FROM ubuntu:latest

# Instalação das dependências
RUN apt-get update && apt-get install -y isc-dhcp-server

# Copiar o arquivo de configuração personalizado
COPY dhcpd.conf /etc/dhcp/dhcpd.conf

# Expor a porta UDP 67 para DHCP
EXPOSE 67/udp

# Iniciar o serviço DHCP Server quando o container for iniciado
CMD ["dhcpd", "-d", "-f", "-cf", "/etc/dhcp/dhcpd.conf", "--no-pid"]
