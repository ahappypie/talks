---
class: py-10
---
# Setup

<div grid grid-cols-2 gap-6 h-75>
    <div text-align-center mt-4>
        <div mt-4 v-click="1"><h3>Official Install Only:</h3></div>
        <div mt-4 v-click="1"><code>duckdb -cmd "install ui; load ui; call start_ui_server();"</code></div>
        <div mt-4 v-click="1">Navigate to link in browser: defaults to localhost:4213</div>
        <div mt-8 v-click="2"><h3>Connect to the Database:</h3></div>
        <div mt-4 v-click="2"><code>ATTACH '<OriginLink value="2026-02-12-anderson-sql-101/weather.duckdb"/>';</code></div>
    </div>
    <div v-click="3">
        <QrCode value="2026-02-12-anderson-sql-101/weather.duckdb" />
    </div>
</div>