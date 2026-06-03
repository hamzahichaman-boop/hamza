# hamza

## Cursor — Context7 و Exa (جاهز)

تم تثبيت خادمي MCP في المشروع. **لا تحتاج مفتاح API للبدء** (الخطة المجانية).

| الخادم | الوظيفة |
|--------|---------|
| **context7** | توثيق المكتبات محدّث |
| **exa** | بحث على الويب |

### على جهازك

1. اسحب المشروع أو افتحه في Cursor.
2. الملف `.cursor/mcp.json` يُحمَّل تلقائياً مع المشروع.
3. أعد تشغيل Cursor إن لم يظهر الخادمان في **Settings → MCP**.

### تثبيت عالمي (كل المشاريع)

```bash
bash scripts/setup-cursor-mcp.sh
```

ينسخ الإعداد إلى `~/.cursor/mcp.json`.

### مفاتيح API (اختياري — حدود أعلى)

انسخ `.cursor/mcp.with-api-keys.json.example` إلى `.cursor/mcp.json` وضع مفاتيحك:

- Context7: https://context7.com/dashboard  
- Exa: https://dashboard.exa.ai/api-keys  
