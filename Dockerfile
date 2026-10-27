FROM kasmweb/desktop:1.18.0

# Railway يفرض استخدام مستخدم بصلاحيات جذور أحياناً أو تغيير المنفذ
USER root

# تحويل منفذ Kasm الافتراضي (6901) ليعمل على المنفذ الذي تحدده Railway ديناميكياً
CMD ["sh", "-c", "/dockerstartup/vnc_startup.sh --port ${PORT:-6901}"]
