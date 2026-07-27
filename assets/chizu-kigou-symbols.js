// 地図記号のSVG定義。クイズ画面(syakai/chizu-kigou/)と
// 先生用の一覧ページ(teacher/symbols/)の両方から使う。
//
// 記号を追加するときは:
//   1. ここに <g id="sym-<item_key>"> を足す
//   2. data/items_chizu-kigou.csv に同じ item_key の行を足す
//   3. node scripts/generate-seed.js > seed.sql して、差分を migrations/ に書く
//
// viewBox は 0 0 100 100 で統一。線と塗りは currentColor を使い、
// 色は呼び出し側のCSS(.quiz-symbol-visual など)で決めるのでダークモードに追従する。
// 卍 / 文 / 〒 は記号そのものが文字なので <text> で描く。このとき text-anchor と
// dominant-baseline は CSS ではなく SVG 属性で指定しないと中央に来ない。
(() => {
  const SYMBOLS_SVG = `
    <!-- 神社: 鳥居 -->
    <g id="sym-jinja" fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="square">
      <path d="M18 26 H82"/>
      <path d="M26 40 H74"/>
      <path d="M32 26 V80"/>
      <path d="M68 26 V80"/>
    </g>

    <!-- 寺院: 卍 -->
    <g id="sym-jiin">
      <text class="sym-glyph" x="50" y="50" font-size="82" text-anchor="middle" dominant-baseline="central">卍</text>
    </g>

    <!-- 郵便局: 〒 を丸で囲む -->
    <g id="sym-yubinkyoku">
      <circle cx="50" cy="50" r="34" fill="none" stroke="currentColor" stroke-width="6"/>
      <text class="sym-glyph" x="50" y="50" font-size="46" text-anchor="middle" dominant-baseline="central">〒</text>
    </g>

    <!-- 小・中学校: 文 -->
    <g id="sym-shochugakko">
      <text class="sym-glyph" x="50" y="50" font-size="82" text-anchor="middle" dominant-baseline="central">文</text>
    </g>

    <!-- 高等学校: 文 を丸で囲む -->
    <g id="sym-kotogakko">
      <circle cx="50" cy="50" r="34" fill="none" stroke="currentColor" stroke-width="6"/>
      <text class="sym-glyph" x="50" y="50" font-size="46" text-anchor="middle" dominant-baseline="central">文</text>
    </g>

    <!-- 市役所: 二重丸 -->
    <g id="sym-shiyakusho" fill="none" stroke="currentColor" stroke-width="6">
      <circle cx="50" cy="50" r="32"/>
      <circle cx="50" cy="50" r="16"/>
    </g>

    <!-- 町村役場: 丸 -->
    <g id="sym-choson-yakuba" fill="none" stroke="currentColor" stroke-width="7">
      <circle cx="50" cy="50" r="30"/>
    </g>

    <!-- 交番: 交差した警棒 -->
    <g id="sym-koban" fill="none" stroke="currentColor" stroke-width="8" stroke-linecap="square">
      <path d="M26 26 L74 74"/>
      <path d="M74 26 L26 74"/>
    </g>

    <!-- 警察署: 交差した警棒を丸で囲む -->
    <g id="sym-keisatsusho" fill="none" stroke="currentColor" stroke-width="6">
      <circle cx="50" cy="50" r="34"/>
      <g stroke-width="7" stroke-linecap="square">
        <path d="M34 34 L66 66"/>
        <path d="M66 34 L34 66"/>
      </g>
    </g>

    <!-- 消防署: さすまた -->
    <g id="sym-shobosho" fill="none" stroke="currentColor" stroke-width="8" stroke-linecap="square">
      <path d="M30 20 V44 H70 V20"/>
      <path d="M50 44 V82"/>
    </g>

    <!-- 工場: 歯車 -->
    <g id="sym-kojo">
      <g fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="butt">
        <path d="M50 12 V26"/>
        <path d="M50 74 V88"/>
        <path d="M12 50 H26"/>
        <path d="M74 50 H88"/>
        <path d="M23 23 L33 33"/>
        <path d="M67 67 L77 77"/>
        <path d="M77 23 L67 33"/>
        <path d="M33 67 L23 77"/>
      </g>
      <circle cx="50" cy="50" r="24" fill="none" stroke="currentColor" stroke-width="7"/>
    </g>

    <!-- 図書館: 開いた本 -->
    <g id="sym-toshokan" fill="none" stroke="currentColor" stroke-width="6" stroke-linejoin="round">
      <path d="M50 32 C40 24 28 24 18 28 V74 C28 70 40 70 50 78"/>
      <path d="M50 32 C60 24 72 24 82 28 V74 C72 70 60 70 50 78"/>
      <path d="M50 32 V78"/>
    </g>

    <!-- 博物館: 柱のある建物 -->
    <g id="sym-hakubutsukan" fill="none" stroke="currentColor" stroke-width="6" stroke-linejoin="round">
      <path d="M50 18 L86 38 H14 Z"/>
      <path d="M24 46 V72"/>
      <path d="M41 46 V72"/>
      <path d="M59 46 V72"/>
      <path d="M76 46 V72"/>
      <path d="M14 80 H86"/>
    </g>

    <!-- 老人ホーム: 建物の中に杖 -->
    <g id="sym-rojin-home" fill="none" stroke="currentColor" stroke-width="6" stroke-linejoin="round">
      <path d="M18 40 L50 18 L82 40 V84 H18 Z"/>
      <path d="M58 44 C58 36 42 36 42 46 V74" stroke-linecap="round"/>
    </g>

    <!-- 灯台: 光を放つ -->
    <g id="sym-todai">
      <circle cx="50" cy="58" r="9" fill="currentColor"/>
      <g fill="none" stroke="currentColor" stroke-width="6" stroke-linecap="round">
        <path d="M50 44 V16"/>
        <path d="M38 48 L20 26"/>
        <path d="M62 48 L80 26"/>
        <path d="M34 60 H12"/>
        <path d="M66 60 H88"/>
        <path d="M40 74 H60"/>
      </g>
    </g>

    <!-- 港: 錨 -->
    <g id="sym-minato" fill="none" stroke="currentColor" stroke-width="6" stroke-linecap="round">
      <circle cx="50" cy="20" r="8"/>
      <path d="M50 28 V82"/>
      <path d="M28 40 H72"/>
      <path d="M22 58 C22 78 36 86 50 86 C64 86 78 78 78 58"/>
    </g>

    <!-- 温泉 -->
    <g id="sym-onsen" fill="none" stroke="currentColor" stroke-width="6" stroke-linecap="round">
      <path d="M18 66 C18 78 32 82 50 82 C68 82 82 78 82 66"/>
      <path d="M34 54 C34 44 26 42 26 32 C26 24 32 22 34 18"/>
      <path d="M52 54 C52 44 44 42 44 32 C44 24 50 22 52 18"/>
      <path d="M70 54 C70 44 62 42 62 32 C62 24 68 22 70 18"/>
    </g>

    <!-- 三角点 -->
    <g id="sym-sankakuten">
      <path d="M50 20 L84 78 H16 Z" fill="none" stroke="currentColor" stroke-width="7" stroke-linejoin="round"/>
      <circle cx="50" cy="58" r="6" fill="currentColor"/>
    </g>

    <!-- 茶畑: 実を3つ -->
    <g id="sym-chabatake" fill="currentColor">
      <circle cx="50" cy="28" r="11"/>
      <circle cx="30" cy="66" r="11"/>
      <circle cx="70" cy="66" r="11"/>
    </g>

    <!-- 桑畑 -->
    <g id="sym-kuwabatake" fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="round">
      <path d="M50 82 V48"/>
      <path d="M50 48 L26 22"/>
      <path d="M50 48 L74 22"/>
    </g>

    <!-- 広葉樹林: 丸い樹冠 -->
    <g id="sym-koyojurin" fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="round">
      <circle cx="50" cy="40" r="24"/>
      <path d="M50 64 V86"/>
    </g>

    <!-- 針葉樹林: とがった樹冠 -->
    <g id="sym-shinyojurin" fill="none" stroke="currentColor" stroke-width="7" stroke-linejoin="round" stroke-linecap="round">
      <path d="M50 14 L74 62 H26 Z"/>
      <path d="M50 62 V86"/>
    </g>
  `;

  const template = document.createElement("template");
  template.innerHTML = `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100">${SYMBOLS_SVG}</svg>`;
  const source = template.content.querySelector("svg");

  // item_key に対応する <svg> 要素を作って返す。未定義なら null。
  function build(itemKey) {
    const symbol = source.querySelector(`#sym-${CSS.escape(itemKey)}`);
    if (!symbol) return null;

    const svg = document.createElementNS("http://www.w3.org/2000/svg", "svg");
    svg.setAttribute("viewBox", "0 0 100 100");
    svg.setAttribute("role", "img");
    svg.setAttribute("aria-label", "地図記号");
    svg.appendChild(symbol.cloneNode(true));
    return svg;
  }

  // 定義済みの item_key 一覧(CSVとの突き合わせ用)。
  function keys() {
    return [...source.querySelectorAll("g[id^='sym-']")].map((g) => g.id.replace(/^sym-/, ""));
  }

  window.ChizuKigou = { build, keys };
})();
