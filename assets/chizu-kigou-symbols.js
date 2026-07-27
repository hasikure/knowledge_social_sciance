// 地図記号のSVG定義。
//
// クイズ画面(syakai/chizu-kigou/)と先生用の問題一覧(teacher/items/)の両方から使う。
//
// 記号を追加するときは:
//   1. ここに <g id="sym-<item_key>"> を足す
//   2. data/items_chizu-kigou.csv に同じ item_key の行を足す
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

    <!-- 郵便局: 〒 を丸で囲む -->
    <g id="sym-yubinkyoku">
      <circle cx="50" cy="50" r="34" fill="none" stroke="currentColor" stroke-width="6"/>
      <text class="sym-glyph" x="50" y="50" font-size="58" text-anchor="middle" dominant-baseline="central">〒</text>
    </g>

    <!-- 小・中学校: 文。払いは直線 -->
    <g id="sym-shochugakko" fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="round">
      <path d="M40 14 L50 25"/>
      <path d="M24 34 H76"/>
      <path d="M64 40 L28 86"/>
      <path d="M38 40 L74 86"/>
    </g>

    <!-- 高等学校: 文 を丸で囲む -->
    <g id="sym-kotogakko">
      <circle cx="50" cy="50" r="35" fill="none" stroke="currentColor" stroke-width="6"/>
      <g fill="none" stroke="currentColor" stroke-width="5.5" stroke-linecap="round">
        <path d="M43 21 L50 29"/>
        <path d="M32 36 H68"/>
        <path d="M61 41 L34 74"/>
        <path d="M40 41 L67 74"/>
      </g>
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

    <!-- 交番: 交差した警棒。少し縦長 -->
    <g id="sym-koban" fill="none" stroke="currentColor" stroke-width="8" stroke-linecap="square">
      <path d="M30 18 L70 82"/>
      <path d="M70 18 L30 82"/>
    </g>

    <!-- 警察署: 交差した警棒を丸で囲む。棒の先は円に接する -->
    <g id="sym-keisatsusho" fill="none" stroke="currentColor" stroke-width="6">
      <circle cx="50" cy="50" r="34"/>
      <g stroke-width="7" stroke-linecap="round">
        <path d="M26 26 L74 74"/>
        <path d="M74 26 L26 74"/>
      </g>
    </g>

    <!-- 消防署: さすまた。腕は先が垂直に立ち上がる -->
    <g id="sym-shobosho" fill="none" stroke="currentColor" stroke-width="8" stroke-linecap="round" stroke-linejoin="round">
      <path d="M26 16 V30 L50 50 L74 30 V16"/>
      <path d="M50 50 V84"/>
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

    <!-- 発電所: 歯車に送電線を組み合わせた形 -->
    <g id="sym-hatsudensho">
      <g fill="none" stroke="currentColor" stroke-width="6" stroke-linecap="butt">
        <path d="M50 24 V33"/>
        <path d="M50 67 V76"/>
        <path d="M24 50 H33"/>
        <path d="M67 50 H76"/>
        <path d="M31 31 L38 38"/>
        <path d="M62 62 L69 69"/>
        <path d="M69 31 L62 38"/>
        <path d="M38 62 L31 69"/>
      </g>
      <circle cx="50" cy="50" r="17" fill="none" stroke="currentColor" stroke-width="6"/>
      <g fill="none" stroke="currentColor" stroke-width="6" stroke-linecap="butt" stroke-linejoin="miter">
        <path d="M4 80 H20 V50"/>
        <path d="M96 20 H80 V50"/>
      </g>
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

    <!-- 老人ホーム: 建物の中に杖。杖は床につく -->
    <g id="sym-rojin-home" fill="none" stroke="currentColor" stroke-width="6" stroke-linejoin="round">
      <path d="M18 40 L50 18 L82 40 V84 H18 Z"/>
      <path d="M40 50 C40 43 56 43 56 51 V84" stroke-width="5" stroke-linecap="round"/>
    </g>

    <!-- 灯台: 中心の光と、放射する光線 -->
    <g id="sym-todai">
      <circle cx="50" cy="50" r="11" fill="currentColor"/>
      <g fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="butt">
        <path d="M50 26 V12"/>
        <path d="M50 74 V88"/>
        <path d="M26 50 H12"/>
        <path d="M74 50 H88"/>
        <path d="M33 33 L23 23"/>
        <path d="M67 67 L77 77"/>
        <path d="M67 33 L77 23"/>
        <path d="M33 67 L23 77"/>
      </g>
    </g>

    <!-- 重要港: 錨。爪は外へ張り出して先が上を向く -->
    <g id="sym-minato" fill="none" stroke="currentColor" stroke-width="6" stroke-linecap="round" stroke-linejoin="round">
      <circle cx="50" cy="18" r="9"/>
      <path d="M50 27 V84"/>
      <path d="M36 38 H64"/>
      <path d="M20 60 L20 72 C30 81 42 84 50 84 C58 84 70 81 80 72 L80 60"/>
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

    <!-- 裁判所: 高札(立て札)。板の下に杭が立つ -->
    <g id="sym-saibansho" fill="none" stroke="currentColor" stroke-linejoin="round">
      <path d="M50 14 L74 50 H26 Z" stroke-width="7"/>
      <path d="M22 60 H78" stroke-width="10" stroke-linecap="square"/>
      <path d="M50 60 V86" stroke-width="8" stroke-linecap="square"/>
    </g>

    <!-- 税務署: そろばんの玉。玉の中央を串(横線)が貫く -->
    <g id="sym-zeimusho" fill="none" stroke="currentColor" stroke-width="7" stroke-linejoin="round" stroke-linecap="square">
      <path d="M50 28 L82 50 L50 72 L18 50 Z"/>
      <path d="M8 50 H92"/>
    </g>

    <!-- 保健所: 丸の中に十字 -->
    <g id="sym-hokenjo" fill="none" stroke="currentColor" stroke-width="6">
      <circle cx="50" cy="50" r="32"/>
      <path d="M50 22 V78" stroke-width="9"/>
      <path d="M22 50 H78" stroke-width="9"/>
    </g>

    <!-- 病院: 旧陸軍衛生隊の五角形に、赤十字の十字 -->
    <g id="sym-byoin" fill="none" stroke="currentColor" stroke-width="6" stroke-linejoin="round">
      <path d="M50 14 L82 38 V84 H18 V38 Z"/>
      <path d="M50 40 V74" stroke-width="8"/>
      <path d="M32 57 H68" stroke-width="8"/>
    </g>

    <!-- 記念碑: 石碑と台座 -->
    <g id="sym-kinenhi" fill="none" stroke="currentColor" stroke-width="7" stroke-linejoin="round">
      <path d="M34 22 H58 V70 H34 Z"/>
      <path d="M18 78 H82"/>
    </g>

    <!-- 墓地: 墓を横から見た形 -->
    <g id="sym-bochi" fill="none" stroke="currentColor" stroke-linecap="square">
      <path d="M50 20 V70" stroke-width="14"/>
      <path d="M22 78 H78" stroke-width="10"/>
    </g>

    <!-- 果樹園: 実のなる木 -->
    <g id="sym-kajuen" fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="round">
      <circle cx="50" cy="58" r="19"/>
      <path d="M50 39 V16"/>
    </g>

    <!-- 茶畑: 茶の実を3つ、三角形に並べる -->
    <g id="sym-chabatake" fill="currentColor">
      <circle cx="50" cy="28" r="8"/>
      <circle cx="30" cy="64" r="8"/>
      <circle cx="70" cy="64" r="8"/>
    </g>

    <!-- 田: 刈り取った稲の株(二本線)を3つ、三角形に並べる -->
    <g id="sym-ta" fill="none" stroke="currentColor" stroke-width="5" stroke-linecap="round">
      <path d="M44 14 V34"/><path d="M56 14 V34"/>
      <path d="M22 56 V76"/><path d="M34 56 V76"/>
      <path d="M66 56 V76"/><path d="M78 56 V76"/>
    </g>

    <!-- 畑: 二葉を3つ、三角形に並べる -->
    <g id="sym-hatake" fill="none" stroke="currentColor" stroke-width="5" stroke-linecap="round" stroke-linejoin="round">
      <path d="M40 18 L50 32 L60 18"/>
      <path d="M18 58 L28 72 L38 58"/>
      <path d="M62 58 L72 72 L82 58"/>
    </g>

    <!-- 荒地: まばらな草を3つ、三角形に並べる -->
    <g id="sym-arechi" fill="none" stroke="currentColor" stroke-width="5" stroke-linecap="round">
      <path d="M50 14 V34"/>
      <path d="M28 56 V76"/>
      <path d="M72 56 V76"/>
    </g>

    <!-- 広葉樹林: 丸い樹冠と、右へ伸びる枝 -->
    <g id="sym-koyojurin" fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="round">
      <circle cx="44" cy="44" r="22"/>
      <path d="M53 63 H76"/>
    </g>

    <!-- 針葉樹林: とがった細い樹冠 -->
    <g id="sym-shinyojurin" fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="round" stroke-linejoin="round">
      <path d="M46 14 L30 76"/>
      <path d="M46 14 L68 76"/>
      <path d="M30 76 H68"/>
    </g>

    <!-- 桑畑: 枝を広げた桑の木。幹の下が右に折れる -->
    <g id="sym-kuwabatake" fill="none" stroke="currentColor" stroke-width="7" stroke-linecap="round" stroke-linejoin="round">
      <path d="M50 46 L28 20"/>
      <path d="M50 46 L72 20"/>
      <path d="M50 46 V68 L68 84"/>
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
