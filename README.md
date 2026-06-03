# hamza

## Cursor — Context7 و Exa (جاهز)

تم تثبيت خادمي MCP في المشروع. **لا تحتاج مفتاح API للبدء** (الخطة المجانية).

| الخادم | الوظيفة |
|--------|---------|
| **context7** | توثيق المكتبات محدّث |
| **exa** | بحث على الويب |

### Windows — خطوة بخطوة

1. **حمّل المشروع** من GitHub (Merge PR أو Clone)، ثم في Cursor: **File → Open Folder** واختر مجلد `hamza`.
2. **تثبيت عالمي (موصى به على Windows)** — افتح **PowerShell** داخل مجلد المشروع وشغّل:

```powershell
powershell -ExecutionPolicy Bypass -File scripts\setup-cursor-mcp.ps1
```

ينسخ الإعداد إلى: `C:\Users\اسمك\.cursor\mcp.json`

3. **أغلق Cursor بالكامل** (من شريط المهام: Quit، وليس إغلاق النافذة فقط).
4. افتح Cursor من جديد.
5. **تحقق:** `Ctrl + ,` → ابحث عن **MCP** → يجب أن ترى `context7` و `exa` متصلين.

**بدون سكربت:** انسخ يدوياً ملف `.cursor\mcp.json` من المشروع إلى:

`C:\Users\<اسم_المستخدم>\.cursor\mcp.json`

(أنشئ مجلد `.cursor` إن لم يكن موجوداً.)

### Mac / Linux

1. افتح مجلد المشروع في Cursor.
2. اختياري — تثبيت عالمي:

```bash
bash scripts/setup-cursor-mcp.sh
```

3. أعد تشغيل Cursor وتحقق من **Settings → MCP**.

### مفاتيح API (اختياري — حدود أعلى)

انسخ `.cursor/mcp.with-api-keys.json.example` إلى `.cursor/mcp.json` وضع مفاتيحك:

- Context7: https://context7.com/dashboard  
- Exa: https://dashboard.exa.ai/api-keys  
