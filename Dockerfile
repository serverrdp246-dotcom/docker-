FROM kasmweb/desktop:1.18.0

USER root

# مسح نقاط الدخول القديمة وإجبار الحاوية على تشغيل المنفذ ديناميكياً
ENTRYPOINT ["/dockerstartup/vnc_startup.sh"]
CMD ["--port", "6901"]
