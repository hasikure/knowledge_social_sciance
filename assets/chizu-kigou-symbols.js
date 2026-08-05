// 地図記号のSVG定義。
//
// クイズ画面(syakai/chizu-kigou/)と先生用の問題一覧(teacher/items/)の両方から使う。
//
// 記号を追加するときは:
//   1. ここに <g id="sym-<item_key>"> を足す
//   2. data/items_syakai-chizu-kigou.csv に同じ item_key の行を足す
//   3. node scripts/generate-seed.js > seed.sql して、差分を migrations/ に書く
//
// viewBox は 0 0 100 100 で統一。線と塗りは currentColor を使い、
// 色は呼び出し側のCSS(.quiz-symbol-visual など)で決めるのでダークモードに追従する。
// 卍 と 〒 は記号そのものが文字なので <text> で描く。このとき text-anchor と
// dominant-baseline は CSS ではなく SVG 属性で指定しないと中央に来ない。
// 「文」は書体によって払いが曲線になるため、直線で描いている。
//
// 田・畑・茶畑・荒地は、実際の地形図と同じく単位記号を3つ三角形に並べる。
(() => {
  const SYMBOLS_SVG = `
    <!-- 神社: 鳥居。下の貫は柱の外に出ない -->
    <g id="sym-jinja" fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="square">
      <path d="M16 26 H84"/>
      <path d="M32 40 H68"/>
      <path d="M32 26 V82"/>
      <path d="M68 26 V82"/>
    </g>

    <!-- 寺院: 卍 -->
    <g id="sym-jiin">
      <text class="sym-glyph" x="50" y="50" font-size="84" text-anchor="middle" dominant-baseline="central">卍</text>
    </g>

    <!-- 郵便局: 円に接する、同じ太さの〒 -->
    <g id="sym-yubinkyoku" fill="none" stroke="currentColor" stroke-width="6" stroke-linecap="butt" stroke-linejoin="miter">
      <circle cx="50" cy="50" r="34" fill="none" stroke="currentColor" stroke-width="6"/>
      <path d="M24 28 H76"/>
      <path d="M17 44 H83"/>
      <path d="M50 44 V84"/>
    </g>

    <!-- 小・中学校: 文。払いは直線 -->
    <g id="sym-shochugakko" fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="square" stroke-linejoin="miter">
      <path d="M50 14 V34"/>
      <path d="M24 34 H76"/>
      <path d="M64 35 L28 86" stroke-linecap="butt"/>
      <path d="M36 35 L72 86" stroke-linecap="butt"/>
    </g>

    <!-- 高等学校: 文 を丸で囲む -->
    <g id="sym-kotogakko">
      <g fill="none" stroke="currentColor" stroke-width="6" stroke-linecap="butt" stroke-linejoin="miter">
        <path d="M50 18 V36"/>
        <path d="M18 36 H82"/>
        <path d="M64 36 L30 77"/>
        <path d="M37 36 L70 77"/>
      </g>
      <!-- 円を前面に重ね、横線の端の角を見せない -->
      <circle cx="50" cy="50" r="35" fill="none" stroke="currentColor" stroke-width="6"/>
    </g>

    <!-- 市役所: 二重丸 -->
    <g id="sym-shiyakusho" fill="none" stroke="currentColor" stroke-width="6">
      <circle cx="50" cy="50" r="32"/>
      <circle cx="50" cy="50" r="16" stroke-width="4"/>
    </g>

    <!-- 町村役場: 丸 -->
    <g id="sym-choson-yakuba" fill="none" stroke="currentColor" stroke-width="7">
      <circle cx="50" cy="50" r="30"/>
    </g>

    <!-- 交番: 交差した警棒。少し縦長 -->
    <g id="sym-koban" fill="none" stroke="currentColor" stroke-width="8" stroke-linecap="square">
      <path d="M30 18 L70 82"/>
      <path d="M70 18 L30 82"/>
    </g>

    <!-- 警察署: 交差した警棒を丸で囲む。棒の先は円に接する -->
    <g id="sym-keisatsusho" fill="none" stroke="currentColor" stroke-width="6">
      <circle cx="50" cy="50" r="34"/>
      <g stroke-width="7" stroke-linecap="square" stroke-linejoin="miter">
        <path d="M28 28 L72 72"/>
        <path d="M72 28 L28 72"/>
      </g>
    </g>

    <!-- 消防署: 上が開いたU字と中央の柄 -->
    <g id="sym-shobosho" fill="none" stroke="currentColor" stroke-width="8" stroke-linecap="square">
      <path d="M27 22 C27 46 37 56 50 56 C63 56 73 46 73 22"/>
      <path d="M50 56 V84"/>
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

    <!-- 発電所: 工場の歯車の横線を延ばし、左は下・右は上へ折る -->
    <g id="sym-hatsudensho" fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="butt" stroke-linejoin="miter">
      <g fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="butt">
        <path d="M50 12 V26"/>
        <path d="M50 74 V88"/>
        <path d="M26 50 H6 V80"/>
        <path d="M74 50 H94 V20"/>
        <path d="M23 23 L33 33"/>
        <path d="M67 67 L77 77"/>
        <path d="M77 23 L67 33"/>
        <path d="M33 67 L23 77"/>
      </g>
      <circle cx="50" cy="50" r="24"/>
    </g>

    <!-- 図書館: 開いた本 -->
    <g id="sym-toshokan" fill="none" stroke="currentColor" stroke-width="6" stroke-linejoin="miter" stroke-linecap="square">
      <path d="M50 32 C40 24 28 24 18 28 V74 C28 70 40 70 50 78"/>
      <path d="M50 32 C60 24 72 24 82 28 V74 C72 70 60 70 50 78"/>
      <path d="M50 32 V78"/>
    </g>

    <!-- 博物館: 切妻屋根、ひさし、4本の柱 -->
    <g id="sym-hakubutsukan" fill="none" stroke="currentColor" stroke-width="6" stroke-linecap="square" stroke-linejoin="miter">
      <path d="M20 32 L50 12 L80 32"/>
      <path d="M20 32 H80"/>
      <path d="M24 32 V68"/>
      <path d="M42 32 V68"/>
      <path d="M58 32 V68"/>
      <path d="M76 32 V68"/>
      <path d="M20 70 H80"/>
    </g>

    <!-- 老人ホーム: 建物の中に杖。左は短い持ち手、右の杖だけが床につく -->
    <g id="sym-rojin-home" fill="none" stroke="currentColor" stroke-width="6" stroke-linejoin="miter" stroke-linecap="square">
      <path d="M18 40 L50 18 L82 40"/>
      <path d="M24 40 V84 H76 V40"/>
      <path d="M42 61 V52 C42 43 58 43 58 52 V84" stroke-width="5" stroke-linecap="round"/>
    </g>

    <!-- 灯台: 中心の輪と、放射する光線 -->
    <g id="sym-todai">
      <circle cx="50" cy="50" r="28" fill="none" stroke="currentColor" stroke-width="7"/>
      <circle cx="50" cy="50" r="8" fill="currentColor"/>
      <g fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="butt">
        <path d="M50 22 V8"/>
        <path d="M50 78 V92"/>
        <path d="M22 50 H8"/>
        <path d="M78 50 H92"/>
        <path d="M30 30 L20 20"/>
        <path d="M70 70 L80 80"/>
        <path d="M70 30 L80 20"/>
        <path d="M30 70 L20 80"/>
      </g>
    </g>

    <!-- 港湾: 下の曲線の両端から、そのまま矢印へつながる錨 -->
    <g id="sym-minato" fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="square" stroke-linejoin="miter">
      <circle cx="50" cy="21" r="11"/>
      <path d="M50 34 V90"/>
      <path d="M36 42 H64"/>
      <path d="M18 66 C24 82 36 90 50 90 C64 90 76 82 82 66"/>
      <!-- 三角形の重心を曲線端に置き、二等分線を端点の接線と平行にする -->
      <path d="M14.49 56.64 L13.20 73.14 L26.31 68.22 Z" fill="currentColor" stroke="none"/>
      <path d="M85.51 56.64 L73.69 68.22 L86.80 73.14 Z" fill="currentColor" stroke="none"/>
    </g>

    <!-- 温泉 -->
    <g id="sym-onsen" fill="none" stroke="currentColor" stroke-width="6" stroke-linecap="square">
      <path d="M79 57 A34 18 0 1 1 21 57"/>
      <path d="M34 63 C34 55 27 52 28 43 C28 35 35 33 36 25"/>
      <path d="M50 63 C50 55 43 52 44 43 C44 35 51 33 52 25"/>
      <path d="M66 63 C66 55 59 52 60 43 C60 35 67 33 68 25"/>
    </g>

    <!-- 三角点 -->
    <g id="sym-sankakuten">
      <path d="M50 18 L82 78 H18 Z" fill="none" stroke="currentColor" stroke-width="7" stroke-linejoin="miter"/>
      <circle cx="50" cy="58" r="5.5" fill="currentColor"/>
    </g>

    <!-- 裁判所: 三角の標識と中央の柄 -->
    <g id="sym-saibansho" fill="none" stroke="currentColor" stroke-linejoin="miter" stroke-linecap="square">
      <path d="M50 16 L78 64 H22 Z" stroke-width="7"/>
      <path d="M50 64 V82" stroke-width="7"/>
    </g>

    <!-- 税務署: そろばんの玉。上下の縦線だけを付ける -->
    <g id="sym-zeimusho" fill="none" stroke="currentColor" stroke-width="7" stroke-linejoin="miter" stroke-linecap="square">
      <path d="M50 20 V30"/>
      <path d="M50 30 L82 50 L50 70 L18 50 Z"/>
      <path d="M50 70 V82"/>
    </g>

    <!-- 保健所: 丸の中に、円に触れない十字 -->
    <g id="sym-hokenjo" fill="none" stroke="currentColor" stroke-width="6">
      <circle cx="50" cy="50" r="32"/>
      <path d="M50 30 V70" stroke-width="7"/>
      <path d="M30 50 H70" stroke-width="7"/>
    </g>

    <!-- 病院: 上辺が平らな盾形に十字 -->
    <g id="sym-byoin" fill="none" stroke="currentColor" stroke-width="6" stroke-linejoin="miter" stroke-linecap="square">
      <path d="M20 24 H80 V62 L50 80 L20 62 Z"/>
      <path d="M50 36 V66" stroke-width="7"/>
      <path d="M36 51 H64" stroke-width="7"/>
    </g>

    <!-- 記念碑: 上部が丸い碑 -->
    <g id="sym-kinenhi" fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="square">
      <path d="M40 78 V40 C40 20 60 20 60 40 V78"/>
      <path d="M40 78 H68"/>
    </g>

    <!-- 墓地: 墓を横から見た形 -->
    <g id="sym-bochi" fill="none" stroke="currentColor" stroke-linecap="square">
      <path d="M50 22 V72" stroke-width="7"/>
      <path d="M28 72 H72" stroke-width="7"/>
    </g>

    <!-- 果樹園: 実のなる木 -->
    <g id="sym-kajuen" fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="square">
      <circle cx="50" cy="60" r="17"/>
      <path d="M50 43 V20"/>
    </g>

    <!-- 茶畑: 3粒の茶の実の記号を3つ、三角形に並べる -->
    <g id="sym-chabatake" fill="currentColor">
      <g transform="translate(50 25)">
        <circle cx="0" cy="-6" r="3"/><circle cx="-7" cy="6" r="3"/><circle cx="7" cy="6" r="3"/>
      </g>
      <g transform="translate(28 65)">
        <circle cx="0" cy="-6" r="3"/><circle cx="-7" cy="6" r="3"/><circle cx="7" cy="6" r="3"/>
      </g>
      <g transform="translate(72 65)">
        <circle cx="0" cy="-6" r="3"/><circle cx="-7" cy="6" r="3"/><circle cx="7" cy="6" r="3"/>
      </g>
    </g>

    <!-- 田: 刈り取った稲の株(二本線)を3つ、三角形に並べる -->
    <g id="sym-ta" fill="none" stroke="currentColor" stroke-width="5" stroke-linecap="square">
      <path d="M44 14 V34"/><path d="M56 14 V34"/>
      <path d="M22 56 V76"/><path d="M34 56 V76"/>
      <path d="M66 56 V76"/><path d="M78 56 V76"/>
    </g>

    <!-- 畑: 二葉を3つ、三角形に並べる -->
    <g id="sym-hatake" fill="none" stroke="currentColor" stroke-width="5" stroke-linecap="square" stroke-linejoin="miter">
      <path d="M40 18 L50 32 L60 18"/>
      <path d="M18 58 L28 72 L38 58"/>
      <path d="M62 58 L72 72 L82 58"/>
    </g>

    <!-- 荒地: 中央が長い3本線の単位記号を3つ、三角形に並べる -->
    <g id="sym-arechi" fill="none" stroke="currentColor" stroke-width="4" stroke-linecap="square">
      <g transform="translate(50 25)">
        <path d="M-10 0 V12"/><path d="M0 -10 V12"/><path d="M10 0 V12"/>
      </g>
      <g transform="translate(28 65)">
        <path d="M-10 0 V12"/><path d="M0 -10 V12"/><path d="M10 0 V12"/>
      </g>
      <g transform="translate(72 65)">
        <path d="M-10 0 V12"/><path d="M0 -10 V12"/><path d="M10 0 V12"/>
      </g>
    </g>

    <!-- 広葉樹林: 丸い樹冠と、右へ伸びる枝 -->
    <g id="sym-koyojurin" fill="none" stroke="currentColor" stroke-width="6.5" stroke-linecap="square">
      <circle cx="44" cy="42" r="14"/>
      <path d="M48 56 H72"/>
    </g>

    <!-- 針葉樹林: とがった細い樹冠 -->
    <g id="sym-shinyojurin" transform="translate(2.5 2.1) scale(.95)" fill="none" stroke="currentColor" stroke-width="6.5" stroke-linecap="butt" stroke-linejoin="miter">
      <path d="M30 56 L46 12 L68 56"/>
      <path d="M48 56 H78"/>
    </g>

    <!-- 桑畑: 枝を広げた桑の木を1つ -->
    <g id="sym-kuwabatake" fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="square" stroke-linejoin="miter">
      <g transform="translate(50 25) scale(.7)">
        <path d="M0 26 L-22 0"/><path d="M0 26 L22 0"/><path d="M0 26 V48 H22"/>
      </g>
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
