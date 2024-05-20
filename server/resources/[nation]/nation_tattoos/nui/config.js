const imgDir = "http://191.96.224.154/nation_tattoos/"; // DIRETÓRIO DAS IMAGENS

const pt_BR = {
    back: "voltar",
    confirm: "confirmar",
    buy: "comprar",
    yes: "sim",
    no: "não",
    title: "estudio de tatuagem",
    overlay: "micropigmentação",
    head: "cabeça",
    torso: "torso",
    arms: "braços",
    legs: "pernas",
    leftArm: "braço esquerdo",
    rightArm: "braço direito",
    leftLeg: "perna esquerda",
    rightLeg: "perna direita",
    clear: "limpar",
}



const lang = pt_BR;



const icons = {
    body: `<?xml version="1.0" encoding="iso-8859-1"?>
    <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
         viewBox="0 0 53.545 53.545" style="enable-background:new 0 0 53.545 53.545;" xml:space="preserve">
    <g>
        <g>
            <circle cx="26.686" cy="4.507" r="4.507"/>
            <path d="M28.256,11.163c-1.123-0.228-2.344-0.218-3.447,0.042c-7.493,0.878-9.926,9.551-9.239,16.164
                c0.298,2.859,4.805,2.889,4.504,0c-0.25-2.41-0.143-6.047,1.138-8.632c0,3.142,0,6.284,0,9.425c0,0.111,0.011,0.215,0.016,0.322
                c-0.003,0.051-0.015,0.094-0.015,0.146c0,7.479-0.013,14.955-0.322,22.428c-0.137,3.322,5.014,3.309,5.15,0
                c0.242-5.857,0.303-11.717,0.317-17.578c0.244,0.016,0.488,0.016,0.732,0.002c0.015,5.861,0.074,11.721,0.314,17.576
                c0.137,3.309,5.288,3.322,5.15,0c-0.309-7.473-0.32-14.949-0.32-22.428c0-0.232-0.031-0.443-0.078-0.646
                c-0.007-3.247-0.131-6.497-0.093-9.742c1.534,2.597,1.674,6.558,1.408,9.125c-0.302,2.887,4.206,2.858,4.504,0
                C38.678,20.617,36.128,11.719,28.256,11.163z"/>
        </g>
    </g>
    </svg>`,

    head: `<?xml version="1.0" standalone="no"?>
    <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 20010904//EN"
     "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
    <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
     width="256.000000pt" height="256.000000pt" viewBox="0 0 256.000000 256.000000"
     preserveAspectRatio="xMidYMid meet">
    
    <g transform="translate(0.000000,256.000000) scale(0.100000,-0.100000)"
    stroke="none">
    <path d="M1162 2470 c-235 -43 -444 -226 -518 -454 -22 -67 -28 -106 -32 -222
    l-4 -140 -41 -15 c-66 -23 -87 -63 -87 -169 0 -141 38 -229 123 -286 23 -16
    43 -28 44 -29 1 0 11 -44 21 -97 22 -108 56 -190 102 -248 l30 -38 0 -184 0
    -183 -112 -40 c-110 -39 -113 -41 -113 -70 0 -43 26 -43 147 0 90 32 103 34
    111 20 17 -31 69 -84 100 -103 18 -11 103 -45 190 -77 l159 -56 156 56 c87 32
    171 66 189 77 31 19 83 72 100 103 8 14 20 12 109 -19 109 -39 136 -43 153
    -22 25 30 -4 52 -119 92 l-110 38 0 184 0 184 30 38 c46 58 80 140 102 248 10
    53 20 97 21 97 1 1 21 13 44 29 85 57 123 145 123 286 0 106 -21 146 -88 170
    l-42 14 0 117 c0 262 -105 468 -306 599 -133 87 -328 127 -482 100z m257 -85
    c204 -48 381 -225 436 -435 15 -56 17 -97 11 -295 -9 -342 -41 -610 -86 -713
    -38 -86 -212 -281 -313 -350 l-46 -32 -141 0 -141 0 -46 32 c-91 62 -263 250
    -306 333 -70 137 -126 836 -82 1024 48 204 224 380 435 435 72 19 199 19 279
    1z m-792 -967 c6 -84 8 -155 6 -158 -6 -7 -42 40 -59 77 -18 41 -19 204 -2
    221 7 7 19 12 28 12 14 0 18 -23 27 -152z m1361 140 c17 -17 16 -180 -2 -221
    -17 -37 -53 -84 -59 -77 -3 4 17 300 22 308 3 7 28 1 39 -10z m-924 -1039 l59
    -39 157 0 156 0 50 31 c27 17 82 61 122 96 l72 65 0 -131 c0 -140 -10 -183
    -53 -229 -30 -32 -56 -45 -212 -102 l-134 -49 -134 49 c-156 56 -184 69 -214
    102 -43 46 -53 89 -53 229 l0 131 63 -58 c34 -31 89 -74 121 -95z"/>
    <path d="M171 2386 c-8 -9 -11 -57 -9 -151 3 -119 5 -139 21 -149 12 -8 22 -8
    35 0 14 9 17 29 20 122 l3 111 111 3 c93 3 113 6 122 21 8 12 8 22 0 35 -10
    15 -31 17 -151 20 -111 2 -143 0 -152 -12z"/>
    <path d="M2092 2388 c-7 -7 -12 -19 -12 -28 0 -33 22 -40 132 -40 l107 0 3
    -111 c3 -94 6 -114 21 -123 12 -8 22 -8 35 0 15 10 17 30 20 149 2 93 -1 142
    -9 151 -15 19 -279 20 -297 2z"/>
    <path d="M172 468 c-18 -18 -17 -282 2 -297 9 -8 58 -11 151 -9 119 3 139 5
    149 21 8 12 8 22 0 35 -9 14 -29 17 -123 20 l-111 3 0 107 c0 110 -7 132 -40
    132 -9 0 -21 -5 -28 -12z"/>
    <path d="M2332 468 c-8 -8 -12 -49 -12 -120 l0 -107 -111 -3 c-94 -3 -114 -6
    -123 -21 -8 -12 -8 -22 0 -35 10 -15 30 -17 149 -20 93 -2 142 1 151 9 11 9
    14 44 14 148 0 140 -5 161 -40 161 -9 0 -21 -5 -28 -12z"/>
    </g>
    </svg>
    `,

    chest: `<?xml version="1.0" encoding="iso-8859-1"?>
    <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
         width="40.143px" height="40.143px" viewBox="0 0 40.143 40.143" style="enable-background:new 0 0 40.143 40.143;"
         xml:space="preserve">
    <g>
        <g>
            <path d="M29.248,4.118l-0.502,0.503V4.118h-2.473c-1.115,1.723-3.469,2.914-6.202,2.914c-2.732,0-5.086-1.191-6.201-2.914h-2.473
                v0.503l-0.503-0.503L2,13.017l4.865,4.869l4.532-4.534v22.672h17.347V13.353l4.533,4.534l4.864-4.87L29.248,4.118z"/>
            <path d="M28.744,38.024H11.397c-1.104,0-2-0.896-2-2V18.182L8.279,19.3c-0.375,0.376-0.884,0.586-1.415,0.586c0,0,0,0,0,0
                c-0.53,0-1.04-0.211-1.415-0.586l-4.865-4.869c-0.78-0.781-0.78-2.046,0-2.828L9.48,2.704c0.434-0.435,1.061-0.646,1.665-0.57
                c0.083-0.01,0.167-0.016,0.252-0.016h2.473c0.678,0,1.311,0.344,1.679,0.913c0.787,1.216,2.562,2.001,4.522,2.001
                s3.736-0.785,4.523-2.001c0.368-0.569,1-0.913,1.679-0.913h2.473c0.085,0,0.169,0.005,0.252,0.016
                c0.082-0.01,0.165-0.016,0.249-0.016c0.001,0,0.001,0,0.001,0c0.53,0,1.039,0.211,1.415,0.586l8.894,8.898
                c0.78,0.781,0.78,2.046,0,2.828l-4.864,4.87c-0.375,0.375-0.884,0.586-1.414,0.586c-0.001,0-0.001,0-0.001,0
                c-0.53,0.001-1.039-0.21-1.414-0.585l-1.119-1.12v17.843C30.744,37.129,29.849,38.024,28.744,38.024z M13.397,34.024h13.347
                V13.353c0-0.809,0.487-1.538,1.234-1.848c0.748-0.311,1.607-0.139,2.18,0.434l3.118,3.118l2.038-2.04l-6.399-6.403
                c-0.319,0.029-0.633-0.021-0.934-0.145c-0.209-0.086-0.398-0.206-0.562-0.351h-0.172c-1.651,1.82-4.297,2.914-7.176,2.914
                c-2.879,0-5.524-1.094-7.176-2.914h-0.172c-0.163,0.145-0.352,0.264-0.561,0.351c-0.303,0.125-0.625,0.169-0.936,0.145l-6.4,6.404
                l2.038,2.04l3.117-3.119c0.572-0.573,1.432-0.744,2.18-0.434c0.748,0.31,1.235,1.039,1.235,1.848V34.024z"/>
        </g>
    </g>
    </svg>`,

    leftArm: `<svg version="1.0" xmlns="http://www.w3.org/2000/svg"
        width="2138.000000pt" height="2138.000000pt" viewBox="0 0 2138.000000 2138.000000"
        preserveAspectRatio="xMidYMid meet">
        <g transform="translate(0.000000,2138.000000) scale(0.100000,-0.100000)"
        fill="#AAA9AA" stroke="none">
        <path d="M4713 20579 c-67 -3 -137 -9 -155 -13 -18 -3 -69 -10 -113 -16 -113
        -14 -409 -85 -455 -109 -8 -5 -41 -16 -72 -25 -31 -9 -60 -21 -63 -26 -3 -6
        -13 -10 -21 -10 -8 0 -41 -12 -72 -26 -186 -86 -277 -136 -394 -216 -15 -10
        -30 -18 -33 -18 -10 0 -141 -100 -260 -197 -239 -195 -465 -456 -637 -733 -26
        -41 -52 -86 -57 -100 -6 -14 -15 -32 -21 -40 -5 -8 -21 -42 -35 -75 -15 -33
        -31 -68 -36 -79 -22 -39 -61 -175 -74 -256 -23 -137 3 -399 65 -655 25 -101
        42 -162 55 -190 7 -16 16 -46 20 -65 4 -19 11 -39 15 -45 4 -5 13 -28 20 -50
        19 -59 119 -268 170 -355 25 -41 49 -83 55 -92 112 -194 359 -448 565 -583 65
        -42 100 -84 100 -119 0 -16 44 -150 85 -261 14 -38 31 -85 37 -104 5 -19 19
        -51 29 -70 10 -20 19 -40 19 -45 0 -10 18 -50 119 -256 39 -80 89 -176 111
        -215 22 -38 47 -83 55 -100 9 -16 29 -50 45 -75 16 -25 33 -52 37 -60 14 -31
        150 -239 232 -355 306 -433 581 -756 1020 -1196 350 -350 547 -530 904 -824
        164 -135 321 -259 392 -310 24 -16 85 -62 136 -101 52 -39 128 -94 169 -123
        41 -28 113 -79 160 -112 78 -56 144 -100 410 -274 197 -129 216 -140 240 -152
        14 -7 43 -24 65 -37 22 -14 72 -44 110 -66 39 -23 86 -50 105 -62 59 -35 112
        -65 185 -102 39 -20 93 -50 120 -66 28 -16 168 -89 313 -161 144 -73 265 -136
        268 -141 3 -4 -5 -63 -16 -130 -40 -225 -24 -456 50 -723 37 -134 54 -181 131
        -360 162 -373 459 -818 854 -1280 118 -138 493 -540 586 -630 46 -43 134 -127
        194 -185 258 -246 846 -771 919 -820 13 -8 54 -42 92 -76 66 -58 312 -258 434
        -354 32 -25 123 -96 201 -158 145 -114 303 -237 448 -347 79 -60 420 -312 496
        -367 22 -16 90 -66 152 -111 149 -108 369 -268 397 -287 86 -59 195 -142 198
        -152 3 -7 -1 -41 -9 -75 -22 -105 -43 -369 -43 -536 0 -159 30 -501 55 -635
        l14 -73 -29 -52 c-114 -203 -164 -348 -182 -524 -14 -139 -2 -307 32 -453 94
        -408 119 -583 120 -852 0 -133 13 -182 64 -236 49 -53 97 -73 177 -73 160 -1
        294 98 388 286 30 59 32 129 14 455 -19 360 16 597 119 809 65 132 184 203
        265 158 12 -6 118 -140 234 -297 117 -157 296 -397 399 -535 103 -137 202
        -272 221 -300 19 -27 49 -70 67 -95 140 -192 179 -246 267 -370 55 -77 123
        -171 150 -209 28 -38 68 -94 90 -126 35 -50 71 -99 210 -290 20 -27 65 -90
        100 -140 193 -270 200 -278 265 -296 82 -22 252 -6 310 29 77 47 94 61 123
        102 29 41 32 51 31 121 -1 59 -5 84 -21 110 -12 19 -34 59 -51 89 -16 30 -40
        73 -52 95 -23 41 -41 73 -99 180 -18 33 -41 74 -51 90 -9 17 -32 57 -50 90
        -18 33 -44 78 -56 100 -13 22 -32 56 -42 75 -32 60 -83 152 -127 230 -23 41
        -56 100 -72 130 -17 30 -41 73 -53 95 -12 22 -36 65 -53 95 -16 30 -58 106
        -93 167 -35 62 -64 115 -64 117 0 3 -14 27 -31 54 -38 62 -36 91 10 114 19 9
        39 14 46 10 12 -8 322 -330 640 -667 116 -122 305 -321 420 -441 116 -120 326
        -341 468 -491 169 -177 269 -275 289 -282 100 -35 252 25 370 146 65 68 88
        115 88 186 0 66 6 58 -211 282 -64 66 -201 210 -304 320 -349 370 -698 737
        -920 967 -121 126 -227 240 -235 253 -13 22 -13 26 2 42 24 23 77 21 113 -4
        17 -11 109 -72 205 -135 96 -63 283 -186 415 -273 132 -87 283 -186 335 -220
        52 -34 149 -98 215 -141 66 -43 125 -81 130 -83 6 -2 33 -21 62 -43 29 -21 54
        -38 57 -38 3 0 32 -18 65 -41 136 -93 236 -78 357 53 58 63 78 107 78 179 1
        58 -2 69 -29 102 -16 20 -100 91 -186 159 -85 68 -269 213 -409 323 -139 110
        -288 227 -331 260 -42 33 -151 119 -242 190 -90 72 -199 156 -241 189 -41 32
        -73 62 -70 67 8 14 40 10 54 -6 7 -8 18 -15 24 -15 9 0 86 -37 161 -77 11 -6
        173 -87 360 -179 302 -150 345 -169 388 -168 42 0 53 5 92 44 67 65 92 158 61
        219 -13 24 -81 81 -98 81 -3 0 -49 28 -101 63 -53 34 -122 78 -153 97 -31 19
        -99 62 -150 95 -52 33 -130 83 -174 110 -45 28 -122 76 -173 109 -51 32 -118
        75 -149 95 -31 20 -93 59 -138 86 -142 88 -253 177 -560 450 -398 354 -594
        514 -912 748 -64 47 -175 120 -192 126 -6 2 -37 21 -69 43 -32 21 -65 38 -72
        38 -8 0 -16 3 -19 8 -8 14 -235 122 -256 122 -6 0 -21 6 -33 14 -12 8 -40 19
        -62 25 -22 5 -58 16 -80 25 -22 8 -54 15 -70 16 -44 0 -85 40 -159 155 -36 55
        -74 114 -86 130 -20 28 -201 302 -429 651 -58 87 -165 251 -239 364 -279 424
        -321 488 -397 605 -120 184 -733 1104 -830 1245 -47 69 -107 157 -133 195
        -223 327 -279 408 -372 537 -58 81 -184 258 -280 393 -183 255 -198 277 -345
        475 -49 67 -97 132 -105 144 -8 12 -45 60 -81 106 -36 47 -110 144 -164 215
        -112 148 -209 272 -410 523 -221 275 -254 320 -266 365 -6 23 -19 67 -29 97
        -9 30 -27 87 -38 125 -12 39 -28 93 -37 120 -9 28 -22 70 -30 95 -17 57 -42
        131 -65 195 -10 28 -27 75 -38 105 -23 64 -133 347 -169 435 -14 33 -34 83
        -46 110 -27 67 -83 193 -127 290 -11 22 -74 153 -141 290 -67 138 -128 264
        -136 280 -7 17 -24 48 -36 70 -13 22 -41 74 -64 115 -22 41 -55 102 -73 135
        -35 65 -160 284 -200 350 -14 23 -51 87 -83 141 -32 54 -72 119 -88 144 -16
        25 -32 52 -36 60 -4 8 -19 33 -33 55 -15 22 -43 65 -62 95 -72 112 -388 587
        -438 660 -29 41 -73 103 -96 137 -40 57 -141 196 -237 327 -20 28 -48 67 -61
        86 -22 34 -401 531 -499 655 -253 322 -525 661 -611 761 -34 39 -119 142 -191
        229 -71 88 -148 179 -170 205 -59 67 -159 191 -179 221 -9 15 -21 55 -27 89
        -5 35 -23 111 -40 169 -17 58 -36 129 -44 156 -21 75 -63 187 -75 199 -5 5
        -10 17 -10 26 0 21 -127 271 -179 353 -219 344 -504 602 -856 779 -33 16 -67
        33 -76 38 -33 17 -167 67 -234 88 -172 52 -212 62 -235 62 -14 0 -56 6 -95 14
        -102 20 -155 23 -292 15z"/>
        </g>
    </svg>`,

    rightArm: `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
        <path d="M0 0h512v512H0z" fill="transparent" fill-opacity="1"></path>
        <g class="" transform="translate(0,0)" style="">
            <path
                d="M393.516 16.135c40.837 0 63.378 35.364 64 48 0 16.27-8.044 38.785-25.098 48.492-12.694 49.715-74.547 103.264-128.826 128.724 12.46 43.998-72.647 108.43-122.42 144.158 2.412 11.27 1.6 21.734 0 32 11.59 18.673.475 25.688 1.58 47.29-.602 7.96-13.64 7.21-16.087-4.916 2.78-17.81-1.69-33.203-8.87-31.093l-18.303 24.778-27.29 38.43c-3.38 3.424-15.917.953-12.84-7.275l22.426-40.874-2.17-1.456-42.658 45.283c-3.47 3.59-15.063-4.56-11.437-9.46l39.964-42.532-2.168-1.103-38.163 25.35c-4.354 3.057-13.072-5.926-7.24-10.123l36.674-29.224-25.15 12.625c-3.528 1.206-7.267-5.934-3.424-7.643l29.232-18.686c15.17-12.262 33.696-33.15 53.923-37.372 31.767-47.953 60.17-95.738 100.346-145.373 15.756-59.134 54.396-110.096 96-160 5.972-34.253 29.893-46.475 48-48z"
                fill="#AAA9AA" fill-opacity="1"></path>
        </g>
    </svg>`,


    rightLeg: `<svg version="1.0" xmlns="http://www.w3.org/2000/svg"
        width="130.000000pt" height="130.000000pt" viewBox="0 0 130.000000 130.000000"
        preserveAspectRatio="xMidYMid meet">
        <g transform="translate(0.000000,130.000000) scale(0.100000,-0.100000)"
        fill="#AAA9AA" stroke="none">
        <path d="M642 1168 c-22 -68 -33 -128 -42 -227 -7 -73 -18 -152 -26 -175 -21
        -57 -20 -106 4 -152 20 -39 46 -142 77 -307 13 -65 15 -95 7 -112 -12 -26
        -137 -112 -181 -125 -17 -5 -39 -6 -50 -3 -25 6 -41 -24 -20 -38 18 -11 161
        -12 191 0 13 5 49 4 86 -2 54 -9 65 -9 79 5 14 14 14 24 5 72 -9 43 -8 75 4
        148 30 182 30 236 -1 332 -34 107 -31 129 34 267 73 156 81 185 81 304 l0 105
        -109 0 -108 0 -31 -92z"/>
        </g>
   </svg>`,

    leftLeg: `<svg version="1.0" xmlns="http://www.w3.org/2000/svg"
        width="130.000000pt" height="130.000000pt" viewBox="0 0 130.000000 130.000000"
        preserveAspectRatio="xMidYMid meet">

        <g transform="translate(0.000000,130.000000) scale(0.100000,-0.100000)"
        fill="#AAA9AA" stroke="none">
        <path d="M410 1155 c0 -119 8 -148 81 -304 65 -138 68 -160 34 -267 -31 -96
        -31 -150 -1 -332 12 -73 13 -105 4 -148 -9 -48 -9 -58 5 -72 14 -14 25 -14 79
        -5 37 6 73 7 86 2 30 -12 173 -11 191 0 21 14 5 44 -20 38 -11 -3 -33 -2 -50
        3 -44 13 -169 99 -181 125 -8 17 -6 47 7 112 31 165 57 268 77 307 24 46 25
        95 4 152 -8 23 -19 102 -26 175 -9 99 -20 159 -42 227 l-31 92 -108 0 -109 0
        0 -105z"/>
        </g>
    </svg>`,


    rotate: `<?xml version="1.0" encoding="utf-8"?><svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
        xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 122.88 45.59"
        style="enable-background:new 0 0 122.88 45.59" xml:space="preserve">
        <style type="text/css">
            <![CDATA[
            .st0 {
                fill-rule: evenodd;
                clip-rule: evenodd;
            }
            ]]>
        </style>
        <g>
            <path class="st0"
                d="M105.14,8.16c15.07,5.35,14.31,14.26-6.59,19.42c-4.28,1.06-8.52,2.04-13.64,2.64v6.07 c5.9-0.73,10.92-2.08,15.85-3.28c30.37-7.36,26.92-20.93,5.06-27.4C92.61,1.71,76.16,0.04,62.46,0 C49.59-0.04,35.04,1.16,22.43,4.38c-58.73,15,13.09,35.33,42.34,34.21v7l10.17-10.18v-2.16L64.77,23.09v7.47 c-14.93,0.13-86.53-8.93-41.68-23.5C33.44,3.7,51.73,2.71,62.72,2.73C74.93,2.75,93.62,4.07,105.14,8.16L105.14,8.16z" />
        </g>
    </svg>`,

};




const componentsImages = {
    male: {
        head: "https://cdn.discordapp.com/attachments/907763081046810714/928478357115531354/unknown6.png",
        torso: "https://cdn.discordapp.com/attachments/907763081046810714/928478380180009011/unknown12.png",
        ['arms-section']: "https://cdn.discordapp.com/attachments/907763081046810714/928478682941644850/unknown4.png",
        ['legs-section']: "https://cdn.discordapp.com/attachments/907763081046810714/928478650989416558/unknown3.png",
        overlay: "https://cdn.discordapp.com/attachments/907763081046810714/928478516436156416/unknown2.png",
        leftArm: "https://cdn.discordapp.com/attachments/907763081046810714/928478420453707846/unknown1.png",
        rightArm: "https://cdn.discordapp.com/attachments/907763081046810714/928478400329437184/unknown17.png",
        leftLeg: "https://cdn.discordapp.com/attachments/907763081046810714/928478465345339503/unknown5.png",
        rightLeg: "https://cdn.discordapp.com/attachments/907763081046810714/928478488627908658/unknown16.png",
    },
    female: {
        head: "https://cdn.discordapp.com/attachments/907763081046810714/928478783135178772/unknown10.png",
        torso: "https://cdn.discordapp.com/attachments/907763081046810714/928478782451515422/unknown8.png",
        ['arms-section']: "https://cdn.discordapp.com/attachments/907763081046810714/928478781516161024/unknown.png",
        ['legs-section']: "https://cdn.discordapp.com/attachments/907763081046810714/928478781935607828/unknown7.png",
        overlay: "https://cdn.discordapp.com/attachments/907763081046810714/928478782820585472/unknown9.png",
        leftArm: "https://cdn.discordapp.com/attachments/907763081046810714/928478780559851530/unknown11.png",
        rightArm: "https://cdn.discordapp.com/attachments/907763081046810714/928478780803125268/unknown13.png",
        leftLeg: "https://cdn.discordapp.com/attachments/907763081046810714/928478781058981908/unknown14.png",
        rightLeg: "https://cdn.discordapp.com/attachments/907763081046810714/928478781277089823/unknown15.png",
    },
}