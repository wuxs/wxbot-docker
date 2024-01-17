FROM furacas/wine-vnc-box:latest

WORKDIR /home/app/.wine/drive_c

ADD https://github.com/tom-snow/wechat-windows-versions/releases/download/v3.9.8.25/WeChatSetup-3.9.8.25.exe WeChatSetup.exe
#COPY WeChatSetup-3.9.8.25.exe WeChatSetup.exe
ADD https://raw.githubusercontent.com/jwping/wxbot/main/bin/wxbot-sidecar.exe wxbot-sidecar.exe
#COPY wxbot-sidecar.exe wxbot-sidecar.exe


COPY cmd.sh /cmd.sh
COPY install-wechat.sh install-wechat.sh

RUN bash -c 'nohup /entrypoint.sh 2>&1 &' && \
    sleep 10 && \
    sudo chown app:app WeChatSetup.exe && \
     ./install-wechat.sh && \
     rm -rf WeChatSetup.exe && \
     rm -rf install-wechat.sh

# 可选，优化内存占用，暂未发现对稳定性有影响
#RUN cd /home/app/.wine/drive_c/users/app/AppData/Roaming/Tencent/WeChat/XPlugin/Plugins/ && \
#    rm -r RadiumWMPF ThumbPlayer UpdateNotify WeChatOCR WeChatUpdate WeChatUtility  && \
#    touch RadiumWMPF ThumbPlayer UpdateNotify WeChatOCR WeChatUpdate WeChatUtility  && \
#    chmod 444 RadiumWMPF ThumbPlayer UpdateNotify WeChatOCR WeChatUpdate WeChatUtility

CMD ["/cmd.sh"]
