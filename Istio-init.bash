# Скачивание и установка Istio
curl -L https://istio.io/downloadIstio | sh -
cd istio-*
export PATH=$PWD/bin:$PATH

# Установка с профилем безопасности
istioctl install --set profile=default -y
