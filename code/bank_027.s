.include "includes.s"
        
.bank $027 slot 1
.org $0

.macro CompressedSrc
	.dw (\1-$8000) + (((:\1-:CompressedSrces)&1) << 15)
	.db (:\1-:CompressedSrces) >> 1
.endm
CompressedSrces:
	CompressedSrc CompressedData_000
	CompressedSrc CompressedData_001
	CompressedSrc CompressedData_002
	CompressedSrc CompressedData_003
	CompressedSrc CompressedData_004
	CompressedSrc CompressedData_005
	CompressedSrc CompressedData_006
	CompressedSrc CompressedData_007
	CompressedSrc CompressedData_008
	CompressedSrc CompressedData_009
	CompressedSrc CompressedData_00a
	CompressedSrc CompressedData_00b
	CompressedSrc CompressedData_00c
	CompressedSrc CompressedData_00d
	CompressedSrc CompressedData_00e
	CompressedSrc CompressedData_00f
	CompressedSrc CompressedData_010
	CompressedSrc CompressedData_011
	CompressedSrc CompressedData_012
	CompressedSrc CompressedData_013
	CompressedSrc CompressedData_014
	CompressedSrc CompressedData_015
	CompressedSrc CompressedData_016
	CompressedSrc CompressedData_017
	CompressedSrc CompressedData_018
	CompressedSrc CompressedData_019
	CompressedSrc CompressedData_01a
	CompressedSrc CompressedData_01b
	CompressedSrc CompressedData_01c
	CompressedSrc CompressedData_01d
	CompressedSrc CompressedData_01e
	CompressedSrc CompressedData_01f
	CompressedSrc CompressedData_020
	CompressedSrc CompressedData_021
	CompressedSrc CompressedData_022
	CompressedSrc CompressedData_023
	CompressedSrc CompressedData_024
	CompressedSrc CompressedData_025
	CompressedSrc CompressedData_026
	CompressedSrc CompressedData_027
	CompressedSrc CompressedData_028
	CompressedSrc CompressedData_029
	CompressedSrc CompressedData_02a
	CompressedSrc CompressedData_02b
	CompressedSrc CompressedData_02c
	CompressedSrc CompressedData_02d
	CompressedSrc CompressedData_02e
	CompressedSrc CompressedData_02f
	CompressedSrc CompressedData_030
	CompressedSrc CompressedData_031
	CompressedSrc CompressedData_032
	CompressedSrc CompressedData_033
	CompressedSrc CompressedData_034
	CompressedSrc CompressedData_035
	CompressedSrc CompressedData_036
	CompressedSrc CompressedData_037
	CompressedSrc CompressedData_038
	CompressedSrc CompressedData_039
	CompressedSrc CompressedData_03a
	CompressedSrc CompressedData_03b
	CompressedSrc CompressedData_03c
	CompressedSrc CompressedData_03d
	CompressedSrc CompressedData_03e
	CompressedSrc CompressedData_03f
	CompressedSrc CompressedData_040
	CompressedSrc CompressedData_041
	CompressedSrc CompressedData_042
	CompressedSrc CompressedData_043
	CompressedSrc CompressedData_044
	CompressedSrc CompressedData_045
	CompressedSrc CompressedData_046
	CompressedSrc CompressedData_047
	CompressedSrc CompressedData_048
	CompressedSrc CompressedData_049
	CompressedSrc CompressedData_04a
	CompressedSrc CompressedData_04b
	CompressedSrc CompressedData_04c
	CompressedSrc CompressedData_04d
	CompressedSrc CompressedData_04e
	CompressedSrc CompressedData_04f
	CompressedSrc CompressedData_050
	CompressedSrc CompressedData_051
	CompressedSrc CompressedData_052
	CompressedSrc CompressedData_053
	CompressedSrc CompressedData_054
	CompressedSrc CompressedData_055
	CompressedSrc CompressedData_056
	CompressedSrc CompressedData_057
	CompressedSrc CompressedData_058
	CompressedSrc CompressedData_059
	CompressedSrc CompressedData_05a
	CompressedSrc CompressedData_05b
	CompressedSrc CompressedData_05c
	CompressedSrc CompressedData_05d
	CompressedSrc CompressedData_05e
	CompressedSrc CompressedData_05f
	CompressedSrc CompressedData_060
	CompressedSrc CompressedData_061
	CompressedSrc CompressedData_062
	CompressedSrc CompressedData_063
	CompressedSrc CompressedData_064
	CompressedSrc CompressedData_065
	CompressedSrc CompressedData_066
	CompressedSrc CompressedData_067
	CompressedSrc CompressedData_068
	CompressedSrc CompressedData_069
	CompressedSrc CompressedData_06a
	CompressedSrc CompressedData_06b
	CompressedSrc CompressedData_06c
	CompressedSrc CompressedData_06d
	CompressedSrc CompressedData_06e
	CompressedSrc CompressedData_06f
	CompressedSrc CompressedData_070
	CompressedSrc CompressedData_071
	CompressedSrc CompressedData_072
	CompressedSrc CompressedData_073
	CompressedSrc CompressedData_074
	CompressedSrc CompressedData_075
	CompressedSrc CompressedData_076
	CompressedSrc CompressedData_077
	CompressedSrc CompressedData_078
	CompressedSrc CompressedData_079
	CompressedSrc CompressedData_07a
	CompressedSrc CompressedData_07b
	CompressedSrc CompressedData_07c
	CompressedSrc CompressedData_07d
	CompressedSrc CompressedData_07e
	CompressedSrc CompressedData_07f
	CompressedSrc CompressedData_080
	CompressedSrc CompressedData_081
	CompressedSrc CompressedData_082
	CompressedSrc CompressedData_083
	CompressedSrc CompressedData_084
	CompressedSrc CompressedData_085
	CompressedSrc CompressedData_086
	CompressedSrc CompressedData_087
	CompressedSrc CompressedData_088
	CompressedSrc CompressedData_089
	CompressedSrc CompressedData_08a
	CompressedSrc CompressedData_08b
	CompressedSrc CompressedData_08c
	CompressedSrc CompressedData_08d
	CompressedSrc CompressedData_08e
	CompressedSrc CompressedData_08f
	CompressedSrc CompressedData_090
	CompressedSrc CompressedData_091
	CompressedSrc CompressedData_092
	CompressedSrc CompressedData_093
	CompressedSrc CompressedData_094
	CompressedSrc CompressedData_095
	CompressedSrc CompressedData_096
	CompressedSrc CompressedData_097
	CompressedSrc CompressedData_098
	CompressedSrc CompressedData_099
	CompressedSrc CompressedData_09a
	CompressedSrc CompressedData_09b
	CompressedSrc CompressedData_09c
	CompressedSrc CompressedData_09d
	CompressedSrc CompressedData_09e
	CompressedSrc CompressedData_09f
	CompressedSrc CompressedData_0a0
	CompressedSrc CompressedData_0a1
	CompressedSrc CompressedData_0a2
	CompressedSrc CompressedData_0a3
	CompressedSrc CompressedData_0a4
	CompressedSrc CompressedData_0a5
	CompressedSrc CompressedData_0a6
	CompressedSrc CompressedData_0a7
	CompressedSrc CompressedData_0a8
	CompressedSrc CompressedData_0a9
	CompressedSrc CompressedData_0aa
	CompressedSrc CompressedData_0ab
	CompressedSrc CompressedData_0ac
	CompressedSrc CompressedData_0ad
	CompressedSrc CompressedData_0ae
	CompressedSrc CompressedData_0af
	CompressedSrc CompressedData_0b0
	CompressedSrc CompressedData_0b1
	CompressedSrc CompressedData_0b2
	CompressedSrc CompressedData_0b3
	CompressedSrc CompressedData_0b4
	CompressedSrc CompressedData_0b5
	CompressedSrc CompressedData_0b6
	CompressedSrc CompressedData_0b7
	CompressedSrc CompressedData_0b8
	CompressedSrc CompressedData_0b9
	CompressedSrc CompressedData_0ba
	CompressedSrc CompressedData_0bb
	CompressedSrc CompressedData_0bc
	CompressedSrc CompressedData_0bd
	CompressedSrc CompressedData_0be
	CompressedSrc CompressedData_0bf
	CompressedSrc CompressedData_0c0
	CompressedSrc CompressedData_0c1
	CompressedSrc CompressedData_0c2
	CompressedSrc CompressedData_0c3
	CompressedSrc CompressedData_0c4
	CompressedSrc CompressedData_0c5
	CompressedSrc CompressedData_0c6
	CompressedSrc CompressedData_0c7
	CompressedSrc CompressedData_0c8
	CompressedSrc CompressedData_0c9
	CompressedSrc CompressedData_0ca
	CompressedSrc CompressedData_0cb
	CompressedSrc CompressedData_0cc
	CompressedSrc CompressedData_0cd
	CompressedSrc CompressedData_0ce
	CompressedSrc CompressedData_0cf
	CompressedSrc CompressedData_0d0
	CompressedSrc CompressedData_0d1
	CompressedSrc CompressedData_0d2
	CompressedSrc CompressedData_0d3
	CompressedSrc CompressedData_0d4
	CompressedSrc CompressedData_0d5
	CompressedSrc CompressedData_0d6
	CompressedSrc CompressedData_0d7
	CompressedSrc CompressedData_0d8
	CompressedSrc CompressedData_0d9
	CompressedSrc CompressedData_0da
	CompressedSrc CompressedData_0db
	CompressedSrc CompressedData_0dc
	CompressedSrc CompressedData_0dd
	CompressedSrc CompressedData_0de
	CompressedSrc CompressedData_0df
	CompressedSrc CompressedData_0e0
	CompressedSrc CompressedData_0e1
	CompressedSrc CompressedData_0e2
	CompressedSrc CompressedData_0e3
	CompressedSrc CompressedData_0e4
	CompressedSrc CompressedData_0e5
	CompressedSrc CompressedData_0e6
	CompressedSrc CompressedData_0e7
	CompressedSrc CompressedData_0e8
	CompressedSrc CompressedData_0e9
	CompressedSrc CompressedData_0ea
	CompressedSrc CompressedData_0eb
	CompressedSrc CompressedData_0ec
	CompressedSrc CompressedData_0ed
	CompressedSrc CompressedData_0ee
	CompressedSrc CompressedData_0ef
	CompressedSrc CompressedData_0f0
	CompressedSrc CompressedData_0f1
	CompressedSrc CompressedData_0f2
	CompressedSrc CompressedData_0f3
	CompressedSrc CompressedData_0f4
	CompressedSrc CompressedData_0f5
	CompressedSrc CompressedData_0f6
	CompressedSrc CompressedData_0f7
	CompressedSrc CompressedData_0f8
	CompressedSrc CompressedData_0f9
	CompressedSrc CompressedData_0fa
	CompressedSrc CompressedData_0fb
	CompressedSrc CompressedData_0fc
	CompressedSrc CompressedData_0fd
	CompressedSrc CompressedData_0fe
	CompressedSrc CompressedData_0ff
	CompressedSrc CompressedData_100
	CompressedSrc CompressedData_101
	CompressedSrc CompressedData_102
	CompressedSrc CompressedData_103
	CompressedSrc CompressedData_104
	CompressedSrc CompressedData_105
	CompressedSrc CompressedData_106
	CompressedSrc CompressedData_107
	CompressedSrc CompressedData_108
	CompressedSrc CompressedData_109
	CompressedSrc CompressedData_10a
	CompressedSrc CompressedData_10b
	CompressedSrc CompressedData_10c
	CompressedSrc CompressedData_10d
	CompressedSrc CompressedData_10e
	CompressedSrc CompressedData_10f
	CompressedSrc CompressedData_110
	CompressedSrc CompressedData_111
	CompressedSrc CompressedData_112
	CompressedSrc CompressedData_113
	CompressedSrc CompressedData_114
	CompressedSrc CompressedData_115
	CompressedSrc CompressedData_116
	CompressedSrc CompressedData_117
	CompressedSrc CompressedData_118
	CompressedSrc CompressedData_119
	CompressedSrc CompressedData_11a
	CompressedSrc CompressedData_11b
	CompressedSrc CompressedData_11c
	CompressedSrc CompressedData_11d
	CompressedSrc CompressedData_11e
	CompressedSrc CompressedData_11f
	CompressedSrc CompressedData_120
	CompressedSrc CompressedData_121
	CompressedSrc CompressedData_122
	CompressedSrc CompressedData_123
	CompressedSrc CompressedData_124
	CompressedSrc CompressedData_125
	CompressedSrc CompressedData_126
	CompressedSrc CompressedData_127
	CompressedSrc CompressedData_128
	CompressedSrc CompressedData_129
	CompressedSrc CompressedData_12a
	CompressedSrc CompressedData_12b
	CompressedSrc CompressedData_12c
	CompressedSrc CompressedData_12d
	CompressedSrc CompressedData_12e
	CompressedSrc CompressedData_12f
	CompressedSrc CompressedData_130
	CompressedSrc CompressedData_131
	CompressedSrc CompressedData_132
	CompressedSrc CompressedData_133
	CompressedSrc CompressedData_134
	CompressedSrc CompressedData_135
	CompressedSrc CompressedData_136
	CompressedSrc CompressedData_137
	CompressedSrc CompressedData_138
	CompressedSrc CompressedData_139
	CompressedSrc CompressedData_13a
	CompressedSrc CompressedData_13b
	CompressedSrc CompressedData_13c
	CompressedSrc CompressedData_13d
	CompressedSrc CompressedData_13e
	CompressedSrc CompressedData_13f
	CompressedSrc CompressedData_140
	CompressedSrc CompressedData_141
	CompressedSrc CompressedData_142
	CompressedSrc CompressedData_143
	CompressedSrc CompressedData_144
	CompressedSrc CompressedData_145
	CompressedSrc CompressedData_146
	CompressedSrc CompressedData_147
	CompressedSrc CompressedData_148
	CompressedSrc CompressedData_149
	CompressedSrc CompressedData_14a
	CompressedSrc CompressedData_14b
	CompressedSrc CompressedData_14c
	CompressedSrc CompressedData_14d
	CompressedSrc CompressedData_14e
	CompressedSrc CompressedData_14f
	CompressedSrc CompressedData_150
	CompressedSrc CompressedData_151
	CompressedSrc CompressedData_152
	CompressedSrc CompressedData_153
	CompressedSrc CompressedData_154
	CompressedSrc CompressedData_155
	CompressedSrc CompressedData_156
	CompressedSrc CompressedData_157
	CompressedSrc CompressedData_158
	CompressedSrc CompressedData_159
	CompressedSrc CompressedData_15a
	CompressedSrc CompressedData_15b
	CompressedSrc CompressedData_15c
	CompressedSrc CompressedData_15d
	CompressedSrc CompressedData_15e
	CompressedSrc CompressedData_15f
	CompressedSrc CompressedData_160
	CompressedSrc CompressedData_161
	CompressedSrc CompressedData_162
	CompressedSrc CompressedData_163
	CompressedSrc CompressedData_164
	CompressedSrc CompressedData_165
	CompressedSrc CompressedData_166
	CompressedSrc CompressedData_167
	CompressedSrc CompressedData_168
	CompressedSrc CompressedData_169
	CompressedSrc CompressedData_16a
	CompressedSrc CompressedData_16b
	CompressedSrc CompressedData_16c
	CompressedSrc CompressedData_16d
	CompressedSrc CompressedData_16e
	CompressedSrc CompressedData_16f
	CompressedSrc CompressedData_170
	CompressedSrc CompressedData_171
	CompressedSrc CompressedData_172
	CompressedSrc CompressedData_173
	CompressedSrc CompressedData_174
	CompressedSrc CompressedData_175
	CompressedSrc CompressedData_176
	CompressedSrc CompressedData_177
	CompressedSrc CompressedData_178
	CompressedSrc CompressedData_179
	CompressedSrc CompressedData_17a
	CompressedSrc CompressedData_17b
	CompressedSrc CompressedData_17c
	CompressedSrc CompressedData_17d
	CompressedSrc CompressedData_17e
	CompressedSrc CompressedData_17f
	CompressedSrc CompressedData_180
	CompressedSrc CompressedData_181
	CompressedSrc CompressedData_182
	CompressedSrc CompressedData_183
	CompressedSrc CompressedData_184
	CompressedSrc CompressedData_185
	CompressedSrc CompressedData_186
	CompressedSrc CompressedData_187
	CompressedSrc CompressedData_188
	CompressedSrc CompressedData_189
	CompressedSrc CompressedData_18a
	CompressedSrc CompressedData_18b
	CompressedSrc CompressedData_18c
	CompressedSrc CompressedData_18d
	CompressedSrc CompressedData_18e
	CompressedSrc CompressedData_18f
	CompressedSrc CompressedData_190
	CompressedSrc CompressedData_191
	CompressedSrc CompressedData_192
	CompressedSrc CompressedData_193
	CompressedSrc CompressedData_194
	CompressedSrc CompressedData_195
	CompressedSrc CompressedData_196
	CompressedSrc CompressedData_197
	CompressedSrc CompressedData_198
	CompressedSrc CompressedData_199
	CompressedSrc CompressedData_19a
	CompressedSrc CompressedData_19b
	CompressedSrc CompressedData_19c
	CompressedSrc CompressedData_19d
	CompressedSrc CompressedData_19e
	CompressedSrc CompressedData_19f
	CompressedSrc CompressedData_1a0
	CompressedSrc CompressedData_1a1
	CompressedSrc CompressedData_1a2
	CompressedSrc CompressedData_1a3
	CompressedSrc CompressedData_1a4
	CompressedSrc CompressedData_1a5
	CompressedSrc CompressedData_1a6
	CompressedSrc CompressedData_1a7
	CompressedSrc CompressedData_1a8
	CompressedSrc CompressedData_1a9
	CompressedSrc CompressedData_1aa
	CompressedSrc CompressedData_1ab
	CompressedSrc CompressedData_1ac
	CompressedSrc CompressedData_1ad
	CompressedSrc CompressedData_1ae
	CompressedSrc CompressedData_1af
	CompressedSrc CompressedData_1b0
	CompressedSrc CompressedData_1b1
	CompressedSrc CompressedData_1b2
	CompressedSrc CompressedData_1b3
	CompressedSrc CompressedData_1b4
	CompressedSrc CompressedData_1b5
	CompressedSrc CompressedData_1b6
	CompressedSrc CompressedData_1b7
	CompressedSrc CompressedData_1b8
	CompressedSrc CompressedData_1b9
	CompressedSrc CompressedData_1ba
	CompressedSrc CompressedData_1bb
	CompressedSrc CompressedData_1bc
	CompressedSrc CompressedData_1bd
	CompressedSrc CompressedData_1be
	CompressedSrc CompressedData_1bf
	CompressedSrc CompressedData_1c0
	CompressedSrc CompressedData_1c1
	CompressedSrc CompressedData_1c2
	CompressedSrc CompressedData_1c3
	CompressedSrc CompressedData_1c4
	CompressedSrc CompressedData_1c5
	CompressedSrc CompressedData_1c6
	CompressedSrc CompressedData_1c7
	CompressedSrc CompressedData_1c8
	CompressedSrc CompressedData_1c9
	CompressedSrc CompressedData_1ca
	CompressedSrc CompressedData_1cb
	CompressedSrc CompressedData_1cc
	CompressedSrc CompressedData_1cd
	CompressedSrc CompressedData_1ce
	CompressedSrc CompressedData_1cf
	CompressedSrc CompressedData_1d0
	CompressedSrc CompressedData_1d1
	CompressedSrc CompressedData_1d2
	CompressedSrc CompressedData_1d3
	CompressedSrc CompressedData_1d4
	CompressedSrc CompressedData_1d5
	CompressedSrc CompressedData_1d6
	CompressedSrc CompressedData_1d7
	CompressedSrc CompressedData_1d8
	CompressedSrc CompressedData_1d9
	CompressedSrc CompressedData_1da
	CompressedSrc CompressedData_1db
	CompressedSrc CompressedData_1dc
	CompressedSrc CompressedData_1dd
	CompressedSrc CompressedData_1de
	CompressedSrc CompressedData_1df
	CompressedSrc CompressedData_1e0
	CompressedSrc CompressedData_1e1
	CompressedSrc CompressedData_1e2
	CompressedSrc CompressedData_1e3
	CompressedSrc CompressedData_1e4
	CompressedSrc CompressedData_1e5
	CompressedSrc CompressedData_1e6
	CompressedSrc CompressedData_1e7
	CompressedSrc CompressedData_1e8
	CompressedSrc CompressedData_1e9
	CompressedSrc CompressedData_1ea
	CompressedSrc CompressedData_1eb
	CompressedSrc CompressedData_1ec
	CompressedSrc CompressedData_1ed
	CompressedSrc CompressedData_1ee
	CompressedSrc CompressedData_1ef
	CompressedSrc CompressedData_1f0
	CompressedSrc CompressedData_1f1
	CompressedSrc CompressedData_1f2
	CompressedSrc CompressedData_1f3
	CompressedSrc CompressedData_1f4
	CompressedSrc CompressedData_1f5
	CompressedSrc CompressedData_1f6
	CompressedSrc CompressedData_1f7
	CompressedSrc CompressedData_1f8
	CompressedSrc CompressedData_1f9
	CompressedSrc CompressedData_1fa
	CompressedSrc CompressedData_1fb
	CompressedSrc CompressedData_1fc
	CompressedSrc CompressedData_1fd
	CompressedSrc CompressedData_1fe
	CompressedSrc CompressedData_1ff
	CompressedSrc CompressedData_200
	CompressedSrc CompressedData_201
	CompressedSrc CompressedData_202
	CompressedSrc CompressedData_203
	CompressedSrc CompressedData_204
	CompressedSrc CompressedData_205
	CompressedSrc CompressedData_206
	CompressedSrc CompressedData_207
	CompressedSrc CompressedData_208
	CompressedSrc CompressedData_209
	CompressedSrc CompressedData_20a
	CompressedSrc CompressedData_20b
	CompressedSrc CompressedData_20c
	CompressedSrc CompressedData_20d
	CompressedSrc CompressedData_20e
	CompressedSrc CompressedData_20f
	CompressedSrc CompressedData_210
	CompressedSrc CompressedData_211
	CompressedSrc CompressedData_212
	CompressedSrc CompressedData_213
	CompressedSrc CompressedData_214
	CompressedSrc CompressedData_215
	CompressedSrc CompressedData_216
	CompressedSrc CompressedData_217
	CompressedSrc CompressedData_218
	CompressedSrc CompressedData_219
	CompressedSrc CompressedData_21a
	CompressedSrc CompressedData_21b
	CompressedSrc CompressedData_21c
	CompressedSrc CompressedData_21d
	CompressedSrc CompressedData_21e
	CompressedSrc CompressedData_21f
	CompressedSrc CompressedData_220
	CompressedSrc CompressedData_221
	CompressedSrc CompressedData_222
	CompressedSrc CompressedData_223
	CompressedSrc CompressedData_224
	CompressedSrc CompressedData_225
	CompressedSrc CompressedData_226
	CompressedSrc CompressedData_227
	CompressedSrc CompressedData_228
	CompressedSrc CompressedData_229
	CompressedSrc CompressedData_22a
	CompressedSrc CompressedData_22b
	CompressedSrc CompressedData_22c
	CompressedSrc CompressedData_22d
	CompressedSrc CompressedData_22e
	CompressedSrc CompressedData_22f
	CompressedSrc CompressedData_230
	CompressedSrc CompressedData_231
	CompressedSrc CompressedData_232
	CompressedSrc CompressedData_233
	CompressedSrc CompressedData_234
	CompressedSrc CompressedData_235
	CompressedSrc CompressedData_236
	CompressedSrc CompressedData_237
	CompressedSrc CompressedData_238
	CompressedSrc CompressedData_239
	CompressedSrc CompressedData_23a
	CompressedSrc CompressedData_23b
	CompressedSrc CompressedData_23c
	CompressedSrc CompressedData_23d
	CompressedSrc CompressedData_23e
	CompressedSrc CompressedData_23f
	CompressedSrc CompressedData_240
	CompressedSrc CompressedData_241
	CompressedSrc CompressedData_242
	CompressedSrc CompressedData_243
	CompressedSrc CompressedData_244
	CompressedSrc CompressedData_245
	CompressedSrc CompressedData_246
	CompressedSrc CompressedData_247
	CompressedSrc CompressedData_248
	CompressedSrc CompressedData_249
	CompressedSrc CompressedData_24a
	CompressedSrc CompressedData_24b
	CompressedSrc CompressedData_24c
	CompressedSrc CompressedData_24d
	CompressedSrc CompressedData_24e
	CompressedSrc CompressedData_24f
	CompressedSrc CompressedData_250
	CompressedSrc CompressedData_251
	CompressedSrc CompressedData_252
	CompressedSrc CompressedData_253
	CompressedSrc CompressedData_254
	CompressedSrc CompressedData_255
	CompressedSrc CompressedData_256
	CompressedSrc CompressedData_257
	CompressedSrc CompressedData_258
	CompressedSrc CompressedData_259
	CompressedSrc CompressedData_25a
	CompressedSrc CompressedData_25b
	CompressedSrc CompressedData_25c
	CompressedSrc CompressedData_25d
	CompressedSrc CompressedData_25e
	CompressedSrc CompressedData_25f
	CompressedSrc CompressedData_260
	CompressedSrc CompressedData_261
	CompressedSrc CompressedData_262
	CompressedSrc CompressedData_263
	CompressedSrc CompressedData_264
	CompressedSrc CompressedData_265
	CompressedSrc CompressedData_266
	CompressedSrc CompressedData_267
	CompressedSrc CompressedData_268
	CompressedSrc CompressedData_269
	CompressedSrc CompressedData_26a
	CompressedSrc CompressedData_26b
	CompressedSrc CompressedData_26c
	CompressedSrc CompressedData_26d
	CompressedSrc CompressedData_26e
	CompressedSrc CompressedData_26f
	CompressedSrc CompressedData_270
	CompressedSrc CompressedData_271
	CompressedSrc CompressedData_272
	CompressedSrc CompressedData_273
	CompressedSrc CompressedData_274
	CompressedSrc CompressedData_275
	CompressedSrc CompressedData_276
	CompressedSrc CompressedData_277
	CompressedSrc CompressedData_278
	CompressedSrc CompressedData_279
	CompressedSrc CompressedData_27a
	CompressedSrc CompressedData_27b
	CompressedSrc CompressedData_27c
	CompressedSrc CompressedData_27d
	CompressedSrc CompressedData_27e
	CompressedSrc CompressedData_27f
	CompressedSrc CompressedData_280
	CompressedSrc CompressedData_281
	CompressedSrc CompressedData_282
	CompressedSrc CompressedData_283
	CompressedSrc CompressedData_284
	CompressedSrc CompressedData_285
	CompressedSrc CompressedData_286
	CompressedSrc CompressedData_287
	CompressedSrc CompressedData_288
	CompressedSrc CompressedData_289
	CompressedSrc CompressedData_28a
	CompressedSrc CompressedData_28b
	CompressedSrc CompressedData_28c
	CompressedSrc CompressedData_28d
	CompressedSrc CompressedData_28e
	CompressedSrc CompressedData_28f
	CompressedSrc CompressedData_290
	CompressedSrc CompressedData_291
	CompressedSrc CompressedData_292
	CompressedSrc CompressedData_293
	CompressedSrc CompressedData_294
	CompressedSrc CompressedData_295
	CompressedSrc CompressedData_296
	CompressedSrc CompressedData_297
	CompressedSrc CompressedData_298
	CompressedSrc CompressedData_299
	CompressedSrc CompressedData_29a
	CompressedSrc CompressedData_29b
	CompressedSrc CompressedData_29c
	CompressedSrc CompressedData_29d
	CompressedSrc CompressedData_29e
	CompressedSrc CompressedData_29f
	CompressedSrc CompressedData_2a0
	CompressedSrc CompressedData_2a1
	CompressedSrc CompressedData_2a2
	CompressedSrc CompressedData_2a3
	CompressedSrc CompressedData_2a4
	CompressedSrc CompressedData_2a5
	CompressedSrc CompressedData_2a6
	CompressedSrc CompressedData_2a7
	CompressedSrc CompressedDataEnd


CompressedData_000:
	.incbin "data/compressed_000.bin"

CompressedData_001:
	.incbin "data/compressed_001.bin"

CompressedData_002:
	.incbin "data/compressed_002.bin"

CompressedData_003:
	.incbin "data/compressed_003.bin"

CompressedData_004:
	.incbin "data/compressed_004.bin"

CompressedData_005:
	.incbin "data/compressed_005.bin"

CompressedData_006:
	.incbin "data/compressed_006.bin"

CompressedData_007:
	.incbin "data/compressed_007.bin"

CompressedData_008:
	.incbin "data/compressed_008.bin"

CompressedData_009:
	.incbin "data/compressed_009.bin"

CompressedData_00a:
	.incbin "data/compressed_00a.bin"

CompressedData_00b:
	.incbin "data/compressed_00b.bin"

CompressedData_00c:
	.incbin "data/compressed_00c.bin"

CompressedData_00d:
	.incbin "data/compressed_00d.bin"

CompressedData_00e:
	.incbin "data/compressed_00e.bin"

CompressedData_00f:
	.incbin "data/compressed_00f.bin"

CompressedData_010:
	.incbin "data/compressed_010.bin"

CompressedData_011:
	.incbin "data/compressed_011.bin"

CompressedData_012:
	.incbin "data/compressed_012.bin"

CompressedData_013:
	.incbin "data/compressed_013.bin"

CompressedData_014:
	.incbin "data/compressed_014.bin"

CompressedData_015:
	.incbin "data/compressed_015.bin"

CompressedData_016:
	.incbin "data/compressed_016.bin"

CompressedData_017:
	.incbin "data/compressed_017.bin"

CompressedData_018:
	.incbin "data/compressed_018.bin"

CompressedData_019:
	.incbin "data/compressed_019.bin"

CompressedData_01a:
	.incbin "data/compressed_01a.bin"

CompressedData_01b:
	.incbin "data/compressed_01b.bin"

CompressedData_01c:
	.incbin "data/compressed_01c.bin" READ $0288

.bank $028 slot 1
.org $0

	.incbin "data/compressed_01c.bin" SKIP $0288

CompressedData_01d:
	.incbin "data/compressed_01d.bin"

CompressedData_01e:
	.incbin "data/compressed_01e.bin"

CompressedData_01f:
	.incbin "data/compressed_01f.bin"

CompressedData_020:
	.incbin "data/compressed_020.bin"

CompressedData_021:
	.incbin "data/compressed_021.bin"

CompressedData_022:
	.incbin "data/compressed_022.bin"

CompressedData_023:
	.incbin "data/compressed_023.bin"

CompressedData_024:
	.incbin "data/compressed_024.bin"

CompressedData_025:
	.incbin "data/compressed_025.bin"

CompressedData_026:
	.incbin "data/compressed_026.bin"

CompressedData_027:
	.incbin "data/compressed_027.bin"

CompressedData_028:
	.incbin "data/compressed_028.bin"

CompressedData_029:
	.incbin "data/compressed_029.bin"

CompressedData_02a:
	.incbin "data/compressed_02a.bin"

CompressedData_02b:
	.incbin "data/compressed_02b.bin"

CompressedData_02c:
	.incbin "data/compressed_02c.bin"

CompressedData_02d:
	.incbin "data/compressed_02d.bin"

CompressedData_02e:
	.incbin "data/compressed_02e.bin"

CompressedData_02f:
	.incbin "data/compressed_02f.bin"

CompressedData_030:
	.incbin "data/compressed_030.bin"

CompressedData_031:
	.incbin "data/compressed_031.bin"

CompressedData_032:
	.incbin "data/compressed_032.bin"

CompressedData_033:
	.incbin "data/compressed_033.bin"

CompressedData_034:
	.incbin "data/compressed_034.bin"

CompressedData_035:
	.incbin "data/compressed_035.bin"

CompressedData_036:
	.incbin "data/compressed_036.bin"

CompressedData_037:
	.incbin "data/compressed_037.bin"

CompressedData_038:
	.incbin "data/compressed_038.bin"

CompressedData_039:
	.incbin "data/compressed_039.bin"

CompressedData_03a:
	.incbin "data/compressed_03a.bin"

CompressedData_03b:
	.incbin "data/compressed_03b.bin"

CompressedData_03c:
	.incbin "data/compressed_03c.bin"

CompressedData_03d:
	.incbin "data/compressed_03d.bin"

CompressedData_03e:
	.incbin "data/compressed_03e.bin"

CompressedData_03f:
	.incbin "data/compressed_03f.bin"

CompressedData_040:
	.incbin "data/compressed_040.bin"

CompressedData_041:
	.incbin "data/compressed_041.bin"

CompressedData_042:
	.incbin "data/compressed_042.bin"

CompressedData_043:
	.incbin "data/compressed_043.bin"

CompressedData_044:
	.incbin "data/compressed_044.bin" READ $0579

.bank $029 slot 1
.org $0

	.incbin "data/compressed_044.bin" SKIP $0579

CompressedData_045:
	.incbin "data/compressed_045.bin"

CompressedData_046:
	.incbin "data/compressed_046.bin"

CompressedData_047:
	.incbin "data/compressed_047.bin"

CompressedData_048:
	.incbin "data/compressed_048.bin"

CompressedData_049:
	.incbin "data/compressed_049.bin"

CompressedData_04a:
	.incbin "data/compressed_04a.bin"

CompressedData_04b:
	.incbin "data/compressed_04b.bin"

CompressedData_04c:
	.incbin "data/compressed_04c.bin"

CompressedData_04d:
	.incbin "data/compressed_04d.bin"

CompressedData_04e:
	.incbin "data/compressed_04e.bin"

CompressedData_04f:
	.incbin "data/compressed_04f.bin"

CompressedData_050:
	.incbin "data/compressed_050.bin"

CompressedData_051:
	.incbin "data/compressed_051.bin"

CompressedData_052:
	.incbin "data/compressed_052.bin" READ $0939

.bank $02a slot 1
.org $0

	.incbin "data/compressed_052.bin" SKIP $0939

CompressedData_053:
	.incbin "data/compressed_053.bin"

CompressedData_054:
	.incbin "data/compressed_054.bin"

CompressedData_055:
	.incbin "data/compressed_055.bin"

CompressedData_056:
	.incbin "data/compressed_056.bin"

CompressedData_057:
	.incbin "data/compressed_057.bin"

CompressedData_058:
	.incbin "data/compressed_058.bin"

CompressedData_059:
	.incbin "data/compressed_059.bin"

CompressedData_05a:
	.incbin "data/compressed_05a.bin"

CompressedData_05b:
	.incbin "data/compressed_05b.bin"

CompressedData_05c:
	.incbin "data/compressed_05c.bin"

CompressedData_05d:
	.incbin "data/compressed_05d.bin"

CompressedData_05e:
	.incbin "data/compressed_05e.bin"

CompressedData_05f:
	.incbin "data/compressed_05f.bin"

CompressedData_060:
	.incbin "data/compressed_060.bin"

CompressedData_061:
	.incbin "data/compressed_061.bin" READ $0603

.bank $02b slot 1
.org $0

	.incbin "data/compressed_061.bin" SKIP $0603

CompressedData_062:
	.incbin "data/compressed_062.bin"

CompressedData_063:
	.incbin "data/compressed_063.bin"

CompressedData_064:
	.incbin "data/compressed_064.bin"

CompressedData_065:
	.incbin "data/compressed_065.bin"

CompressedData_066:
	.incbin "data/compressed_066.bin"

CompressedData_067:
	.incbin "data/compressed_067.bin"

CompressedData_068:
	.incbin "data/compressed_068.bin"

CompressedData_069:
	.incbin "data/compressed_069.bin"

CompressedData_06a:
	.incbin "data/compressed_06a.bin"

CompressedData_06b:
	.incbin "data/compressed_06b.bin"

CompressedData_06c:
	.incbin "data/compressed_06c.bin"

CompressedData_06d:
	.incbin "data/compressed_06d.bin"

CompressedData_06e:
	.incbin "data/compressed_06e.bin"

CompressedData_06f:
	.incbin "data/compressed_06f.bin"

CompressedData_070:
	.incbin "data/compressed_070.bin"

CompressedData_071:
	.incbin "data/compressed_071.bin"

CompressedData_072:
	.incbin "data/compressed_072.bin" READ $004d

.bank $02c slot 1
.org $0

	.incbin "data/compressed_072.bin" SKIP $004d

CompressedData_073:
	.incbin "data/compressed_073.bin"

CompressedData_074:
	.incbin "data/compressed_074.bin"

CompressedData_075:
	.incbin "data/compressed_075.bin"

CompressedData_076:
	.incbin "data/compressed_076.bin"

CompressedData_077:
	.incbin "data/compressed_077.bin"

CompressedData_078:
	.incbin "data/compressed_078.bin"

CompressedData_079:
	.incbin "data/compressed_079.bin"

CompressedData_07a:
	.incbin "data/compressed_07a.bin"

CompressedData_07b:
	.incbin "data/compressed_07b.bin"

CompressedData_07c:
	.incbin "data/compressed_07c.bin"

CompressedData_07d:
	.incbin "data/compressed_07d.bin"

CompressedData_07e:
	.incbin "data/compressed_07e.bin"

CompressedData_07f:
	.incbin "data/compressed_07f.bin"

CompressedData_080:
	.incbin "data/compressed_080.bin"

CompressedData_081:
	.incbin "data/compressed_081.bin"

CompressedData_082:
	.incbin "data/compressed_082.bin"

CompressedData_083:
	.incbin "data/compressed_083.bin"

CompressedData_084:
	.incbin "data/compressed_084.bin"

CompressedData_085:
	.incbin "data/compressed_085.bin" READ $0419

.bank $02d slot 1
.org $0

	.incbin "data/compressed_085.bin" SKIP $0419

CompressedData_086:
	.incbin "data/compressed_086.bin"

CompressedData_087:
	.incbin "data/compressed_087.bin"

CompressedData_088:
	.incbin "data/compressed_088.bin"

CompressedData_089:
	.incbin "data/compressed_089.bin"

CompressedData_08a:
	.incbin "data/compressed_08a.bin"

CompressedData_08b:
	.incbin "data/compressed_08b.bin"

CompressedData_08c:
	.incbin "data/compressed_08c.bin"

CompressedData_08d:
	.incbin "data/compressed_08d.bin"

CompressedData_08e:
	.incbin "data/compressed_08e.bin"

CompressedData_08f:
	.incbin "data/compressed_08f.bin"

CompressedData_090:
	.incbin "data/compressed_090.bin"

CompressedData_091:
	.incbin "data/compressed_091.bin"

CompressedData_092:
	.incbin "data/compressed_092.bin"

CompressedData_093:
	.incbin "data/compressed_093.bin"

CompressedData_094:
	.incbin "data/compressed_094.bin"

CompressedData_095:
	.incbin "data/compressed_095.bin"

CompressedData_096:
	.incbin "data/compressed_096.bin"

CompressedData_097:
	.incbin "data/compressed_097.bin" READ $0266

.bank $02e slot 1
.org $0

	.incbin "data/compressed_097.bin" SKIP $0266

CompressedData_098:
	.incbin "data/compressed_098.bin"

CompressedData_099:
	.incbin "data/compressed_099.bin"

CompressedData_09a:
	.incbin "data/compressed_09a.bin"

CompressedData_09b:
	.incbin "data/compressed_09b.bin"

CompressedData_09c:
	.incbin "data/compressed_09c.bin"

CompressedData_09d:
	.incbin "data/compressed_09d.bin"

CompressedData_09e:
	.incbin "data/compressed_09e.bin"

CompressedData_09f:
	.incbin "data/compressed_09f.bin"

CompressedData_0a0:
	.incbin "data/compressed_0a0.bin"

CompressedData_0a1:
	.incbin "data/compressed_0a1.bin"

CompressedData_0a2:
	.incbin "data/compressed_0a2.bin"

CompressedData_0a3:
	.incbin "data/compressed_0a3.bin"

CompressedData_0a4:
	.incbin "data/compressed_0a4.bin"

CompressedData_0a5:
	.incbin "data/compressed_0a5.bin"

CompressedData_0a6:
	.incbin "data/compressed_0a6.bin"

CompressedData_0a7:
	.incbin "data/compressed_0a7.bin"

CompressedData_0a8:
	.incbin "data/compressed_0a8.bin"

CompressedData_0a9:
	.incbin "data/compressed_0a9.bin" READ $00c3

.bank $02f slot 1
.org $0

	.incbin "data/compressed_0a9.bin" SKIP $00c3

CompressedData_0aa:
	.incbin "data/compressed_0aa.bin"

CompressedData_0ab:
	.incbin "data/compressed_0ab.bin"

CompressedData_0ac:
	.incbin "data/compressed_0ac.bin"

CompressedData_0ad:
	.incbin "data/compressed_0ad.bin"

CompressedData_0ae:
	.incbin "data/compressed_0ae.bin"

CompressedData_0af:
	.incbin "data/compressed_0af.bin"

CompressedData_0b0:
	.incbin "data/compressed_0b0.bin"

CompressedData_0b1:
	.incbin "data/compressed_0b1.bin"

CompressedData_0b2:
	.incbin "data/compressed_0b2.bin"

CompressedData_0b3:
	.incbin "data/compressed_0b3.bin"

CompressedData_0b4:
	.incbin "data/compressed_0b4.bin"

CompressedData_0b5:
	.incbin "data/compressed_0b5.bin"

CompressedData_0b6:
	.incbin "data/compressed_0b6.bin"

CompressedData_0b7:
	.incbin "data/compressed_0b7.bin"

CompressedData_0b8:
	.incbin "data/compressed_0b8.bin"

CompressedData_0b9:
	.incbin "data/compressed_0b9.bin"

CompressedData_0ba:
	.incbin "data/compressed_0ba.bin"

CompressedData_0bb:
	.incbin "data/compressed_0bb.bin" READ $03fd

.bank $030 slot 1
.org $0

	.incbin "data/compressed_0bb.bin" SKIP $03fd

CompressedData_0bc:
	.incbin "data/compressed_0bc.bin"

CompressedData_0bd:
	.incbin "data/compressed_0bd.bin"

CompressedData_0be:
	.incbin "data/compressed_0be.bin"

CompressedData_0bf:
	.incbin "data/compressed_0bf.bin"

CompressedData_0c0:
	.incbin "data/compressed_0c0.bin"

CompressedData_0c1:
	.incbin "data/compressed_0c1.bin"

CompressedData_0c2:
	.incbin "data/compressed_0c2.bin"

CompressedData_0c3:
	.incbin "data/compressed_0c3.bin"

CompressedData_0c4:
	.incbin "data/compressed_0c4.bin"

CompressedData_0c5:
	.incbin "data/compressed_0c5.bin"

CompressedData_0c6:
	.incbin "data/compressed_0c6.bin"

CompressedData_0c7:
	.incbin "data/compressed_0c7.bin"

CompressedData_0c8:
	.incbin "data/compressed_0c8.bin"

CompressedData_0c9:
	.incbin "data/compressed_0c9.bin"

CompressedData_0ca:
	.incbin "data/compressed_0ca.bin"

CompressedData_0cb:
	.incbin "data/compressed_0cb.bin"

CompressedData_0cc:
	.incbin "data/compressed_0cc.bin"

CompressedData_0cd:
	.incbin "data/compressed_0cd.bin" READ $0481

.bank $031 slot 1
.org $0

	.incbin "data/compressed_0cd.bin" SKIP $0481

CompressedData_0ce:
	.incbin "data/compressed_0ce.bin"

CompressedData_0cf:
	.incbin "data/compressed_0cf.bin"

CompressedData_0d0:
	.incbin "data/compressed_0d0.bin"

CompressedData_0d1:
	.incbin "data/compressed_0d1.bin"

CompressedData_0d2:
	.incbin "data/compressed_0d2.bin"

CompressedData_0d3:
	.incbin "data/compressed_0d3.bin"

CompressedData_0d4:
	.incbin "data/compressed_0d4.bin"

CompressedData_0d5:
	.incbin "data/compressed_0d5.bin"

CompressedData_0d6:
	.incbin "data/compressed_0d6.bin"

CompressedData_0d7:
	.incbin "data/compressed_0d7.bin"

CompressedData_0d8:
	.incbin "data/compressed_0d8.bin"

CompressedData_0d9:
	.incbin "data/compressed_0d9.bin"

CompressedData_0da:
	.incbin "data/compressed_0da.bin"

CompressedData_0db:
	.incbin "data/compressed_0db.bin"

CompressedData_0dc:
	.incbin "data/compressed_0dc.bin"

CompressedData_0dd:
	.incbin "data/compressed_0dd.bin"

CompressedData_0de:
	.incbin "data/compressed_0de.bin"

CompressedData_0df:
	.incbin "data/compressed_0df.bin"

CompressedData_0e0:
	.incbin "data/compressed_0e0.bin"

CompressedData_0e1:
	.incbin "data/compressed_0e1.bin" READ $026a

.bank $032 slot 1
.org $0

	.incbin "data/compressed_0e1.bin" SKIP $026a

CompressedData_0e2:
	.incbin "data/compressed_0e2.bin"

CompressedData_0e3:
	.incbin "data/compressed_0e3.bin"

CompressedData_0e4:
	.incbin "data/compressed_0e4.bin"

CompressedData_0e5:
	.incbin "data/compressed_0e5.bin"

CompressedData_0e6:
	.incbin "data/compressed_0e6.bin"

CompressedData_0e7:
	.incbin "data/compressed_0e7.bin"

CompressedData_0e8:
	.incbin "data/compressed_0e8.bin"

CompressedData_0e9:
	.incbin "data/compressed_0e9.bin"

CompressedData_0ea:
	.incbin "data/compressed_0ea.bin"

CompressedData_0eb:
	.incbin "data/compressed_0eb.bin"

CompressedData_0ec:
	.incbin "data/compressed_0ec.bin"

CompressedData_0ed:
	.incbin "data/compressed_0ed.bin"

CompressedData_0ee:
	.incbin "data/compressed_0ee.bin"

CompressedData_0ef:
	.incbin "data/compressed_0ef.bin"

CompressedData_0f0:
	.incbin "data/compressed_0f0.bin"

CompressedData_0f1:
	.incbin "data/compressed_0f1.bin"

CompressedData_0f2:
	.incbin "data/compressed_0f2.bin" READ $0215

.bank $033 slot 1
.org $0

	.incbin "data/compressed_0f2.bin" SKIP $0215

CompressedData_0f3:
	.incbin "data/compressed_0f3.bin"

CompressedData_0f4:
	.incbin "data/compressed_0f4.bin"

CompressedData_0f5:
	.incbin "data/compressed_0f5.bin"

CompressedData_0f6:
	.incbin "data/compressed_0f6.bin"

CompressedData_0f7:
	.incbin "data/compressed_0f7.bin"

CompressedData_0f8:
	.incbin "data/compressed_0f8.bin"

CompressedData_0f9:
	.incbin "data/compressed_0f9.bin"

CompressedData_0fa:
	.incbin "data/compressed_0fa.bin"

CompressedData_0fb:
	.incbin "data/compressed_0fb.bin"

CompressedData_0fc:
	.incbin "data/compressed_0fc.bin"

CompressedData_0fd:
	.incbin "data/compressed_0fd.bin"

CompressedData_0fe:
	.incbin "data/compressed_0fe.bin"

CompressedData_0ff:
	.incbin "data/compressed_0ff.bin"

CompressedData_100:
	.incbin "data/compressed_100.bin"

CompressedData_101:
	.incbin "data/compressed_101.bin"

CompressedData_102:
	.incbin "data/compressed_102.bin" READ $052b

.bank $034 slot 1
.org $0

	.incbin "data/compressed_102.bin" SKIP $052b

CompressedData_103:
	.incbin "data/compressed_103.bin"

CompressedData_104:
	.incbin "data/compressed_104.bin"

CompressedData_105:
	.incbin "data/compressed_105.bin"

CompressedData_106:
	.incbin "data/compressed_106.bin"

CompressedData_107:
	.incbin "data/compressed_107.bin"

CompressedData_108:
	.incbin "data/compressed_108.bin"

CompressedData_109:
	.incbin "data/compressed_109.bin"

CompressedData_10a:
	.incbin "data/compressed_10a.bin"

CompressedData_10b:
	.incbin "data/compressed_10b.bin"

CompressedData_10c:
	.incbin "data/compressed_10c.bin"

CompressedData_10d:
	.incbin "data/compressed_10d.bin"

CompressedData_10e:
	.incbin "data/compressed_10e.bin"

CompressedData_10f:
	.incbin "data/compressed_10f.bin"

CompressedData_110:
	.incbin "data/compressed_110.bin"

CompressedData_111:
	.incbin "data/compressed_111.bin"

CompressedData_112:
	.incbin "data/compressed_112.bin"

CompressedData_113:
	.incbin "data/compressed_113.bin"

CompressedData_114:
	.incbin "data/compressed_114.bin"

CompressedData_115:
	.incbin "data/compressed_115.bin"

CompressedData_116:
	.incbin "data/compressed_116.bin"

CompressedData_117:
	.incbin "data/compressed_117.bin"

CompressedData_118:
	.incbin "data/compressed_118.bin" READ $03a3

.bank $035 slot 1
.org $0

	.incbin "data/compressed_118.bin" SKIP $03a3

CompressedData_119:
	.incbin "data/compressed_119.bin"

CompressedData_11a:
	.incbin "data/compressed_11a.bin"

CompressedData_11b:
	.incbin "data/compressed_11b.bin"

CompressedData_11c:
	.incbin "data/compressed_11c.bin"

CompressedData_11d:
	.incbin "data/compressed_11d.bin"

CompressedData_11e:
	.incbin "data/compressed_11e.bin"

CompressedData_11f:
	.incbin "data/compressed_11f.bin"

CompressedData_120:
	.incbin "data/compressed_120.bin"

CompressedData_121:
	.incbin "data/compressed_121.bin"

CompressedData_122:
	.incbin "data/compressed_122.bin"

CompressedData_123:
	.incbin "data/compressed_123.bin"

CompressedData_124:
	.incbin "data/compressed_124.bin"

CompressedData_125:
	.incbin "data/compressed_125.bin"

CompressedData_126:
	.incbin "data/compressed_126.bin"

CompressedData_127:
	.incbin "data/compressed_127.bin"

CompressedData_128:
	.incbin "data/compressed_128.bin"

CompressedData_129:
	.incbin "data/compressed_129.bin"

CompressedData_12a:
	.incbin "data/compressed_12a.bin"

CompressedData_12b:
	.incbin "data/compressed_12b.bin" READ $08e6

.bank $036 slot 1
.org $0

	.incbin "data/compressed_12b.bin" SKIP $08e6

CompressedData_12c:
	.incbin "data/compressed_12c.bin"

CompressedData_12d:
	.incbin "data/compressed_12d.bin"

CompressedData_12e:
	.incbin "data/compressed_12e.bin"

CompressedData_12f:
	.incbin "data/compressed_12f.bin"

CompressedData_130:
	.incbin "data/compressed_130.bin"

CompressedData_131:
	.incbin "data/compressed_131.bin"

CompressedData_132:
	.incbin "data/compressed_132.bin"

CompressedData_133:
	.incbin "data/compressed_133.bin"

CompressedData_134:
	.incbin "data/compressed_134.bin"

CompressedData_135:
	.incbin "data/compressed_135.bin"

CompressedData_136:
	.incbin "data/compressed_136.bin"

CompressedData_137:
	.incbin "data/compressed_137.bin"

CompressedData_138:
	.incbin "data/compressed_138.bin"

CompressedData_139:
	.incbin "data/compressed_139.bin" READ $0487

.bank $037 slot 1
.org $0

	.incbin "data/compressed_139.bin" SKIP $0487

CompressedData_13a:
	.incbin "data/compressed_13a.bin"

CompressedData_13b:
	.incbin "data/compressed_13b.bin"

CompressedData_13c:
	.incbin "data/compressed_13c.bin"

CompressedData_13d:
	.incbin "data/compressed_13d.bin"

CompressedData_13e:
	.incbin "data/compressed_13e.bin"

CompressedData_13f:
	.incbin "data/compressed_13f.bin"

CompressedData_140:
	.incbin "data/compressed_140.bin"

CompressedData_141:
	.incbin "data/compressed_141.bin" READ $07e7

.bank $038 slot 1
.org $0

	.incbin "data/compressed_141.bin" SKIP $07e7

CompressedData_142:
	.incbin "data/compressed_142.bin"

CompressedData_143:
	.incbin "data/compressed_143.bin"

CompressedData_144:
	.incbin "data/compressed_144.bin"

CompressedData_145:
	.incbin "data/compressed_145.bin"

CompressedData_146:
	.incbin "data/compressed_146.bin"

CompressedData_147:
	.incbin "data/compressed_147.bin"

CompressedData_148:
	.incbin "data/compressed_148.bin"

CompressedData_149:
	.incbin "data/compressed_149.bin"

CompressedData_14a:
	.incbin "data/compressed_14a.bin"

CompressedData_14b:
	.incbin "data/compressed_14b.bin"

CompressedData_14c:
	.incbin "data/compressed_14c.bin" READ $0628

.bank $039 slot 1
.org $0

	.incbin "data/compressed_14c.bin" SKIP $0628

CompressedData_14d:
	.incbin "data/compressed_14d.bin"

CompressedData_14e:
	.incbin "data/compressed_14e.bin" READ $0594

.bank $03a slot 1
.org $0

	.incbin "data/compressed_14e.bin" SKIP $0594

CompressedData_14f:
	.incbin "data/compressed_14f.bin" READ $4468

.bank $03b slot 1
.org $0

	.incbin "data/compressed_14f.bin" SKIP $4468

CompressedData_150:
	.incbin "data/compressed_150.bin"

CompressedData_151:
	.incbin "data/compressed_151.bin"

CompressedData_152:
	.incbin "data/compressed_152.bin" READ $110e

.bank $03c slot 1
.org $0

	.incbin "data/compressed_152.bin" SKIP $110e

CompressedData_153:
	.incbin "data/compressed_153.bin"

CompressedData_154:
	.incbin "data/compressed_154.bin" READ $0a07

.bank $03d slot 1
.org $0

	.incbin "data/compressed_154.bin" SKIP $0a07

CompressedData_155:
	.incbin "data/compressed_155.bin"

CompressedData_156:
	.incbin "data/compressed_156.bin" READ $324f

.bank $03e slot 1
.org $0

	.incbin "data/compressed_156.bin" SKIP $324f

CompressedData_157:
	.incbin "data/compressed_157.bin"

CompressedData_158:
	.incbin "data/compressed_158.bin" READ $20f2

.bank $03f slot 1
.org $0

	.incbin "data/compressed_158.bin" SKIP $20f2

CompressedData_159:
	.incbin "data/compressed_159.bin"

CompressedData_15a:
	.incbin "data/compressed_15a.bin"

CompressedData_15b:
	.incbin "data/compressed_15b.bin" READ $2db4

.bank $040 slot 1
.org $0

	.incbin "data/compressed_15b.bin" SKIP $2db4

CompressedData_15c:
	.incbin "data/compressed_15c.bin"

CompressedData_15d:
	.incbin "data/compressed_15d.bin" READ $275c

.bank $041 slot 1
.org $0

	.incbin "data/compressed_15d.bin" SKIP $275c

CompressedData_15e:
	.incbin "data/compressed_15e.bin"

CompressedData_15f:
	.incbin "data/compressed_15f.bin" READ $2478

.bank $042 slot 1
.org $0

	.incbin "data/compressed_15f.bin" SKIP $2478

CompressedData_160:
	.incbin "data/compressed_160.bin"

CompressedData_161:
	.incbin "data/compressed_161.bin"

CompressedData_162:
	.incbin "data/compressed_162.bin"

CompressedData_163:
	.incbin "data/compressed_163.bin"

CompressedData_164:
	.incbin "data/compressed_164.bin"

CompressedData_165:
	.incbin "data/compressed_165.bin"

CompressedData_166:
	.incbin "data/compressed_166.bin"

CompressedData_167:
	.incbin "data/compressed_167.bin"

CompressedData_168:
	.incbin "data/compressed_168.bin"

CompressedData_169:
	.incbin "data/compressed_169.bin"

CompressedData_16a:
	.incbin "data/compressed_16a.bin"

CompressedData_16b:
	.incbin "data/compressed_16b.bin"

CompressedData_16c:
	.incbin "data/compressed_16c.bin"

CompressedData_16d:
	.incbin "data/compressed_16d.bin"

CompressedData_16e:
	.incbin "data/compressed_16e.bin" READ $0461

.bank $043 slot 1
.org $0

	.incbin "data/compressed_16e.bin" SKIP $0461

CompressedData_16f:
	.incbin "data/compressed_16f.bin"

CompressedData_170:
	.incbin "data/compressed_170.bin"

CompressedData_171:
	.incbin "data/compressed_171.bin"

CompressedData_172:
	.incbin "data/compressed_172.bin"

CompressedData_173:
	.incbin "data/compressed_173.bin"

CompressedData_174:
	.incbin "data/compressed_174.bin"

CompressedData_175:
	.incbin "data/compressed_175.bin"

CompressedData_176:
	.incbin "data/compressed_176.bin" READ $0b95

.bank $044 slot 1
.org $0

	.incbin "data/compressed_176.bin" SKIP $0b95

CompressedData_177:
	.incbin "data/compressed_177.bin"

CompressedData_178:
	.incbin "data/compressed_178.bin"

CompressedData_179:
	.incbin "data/compressed_179.bin"

CompressedData_17a:
	.incbin "data/compressed_17a.bin"

CompressedData_17b:
	.incbin "data/compressed_17b.bin"

CompressedData_17c:
	.incbin "data/compressed_17c.bin"

CompressedData_17d:
	.incbin "data/compressed_17d.bin"

CompressedData_17e:
	.incbin "data/compressed_17e.bin"

CompressedData_17f:
	.incbin "data/compressed_17f.bin"

CompressedData_180:
	.incbin "data/compressed_180.bin"

CompressedData_181:
	.incbin "data/compressed_181.bin"

CompressedData_182:
	.incbin "data/compressed_182.bin"

CompressedData_183:
	.incbin "data/compressed_183.bin"

CompressedData_184:
	.incbin "data/compressed_184.bin"

CompressedData_185:
	.incbin "data/compressed_185.bin"

CompressedData_186:
	.incbin "data/compressed_186.bin"

CompressedData_187:
	.incbin "data/compressed_187.bin"

CompressedData_188:
	.incbin "data/compressed_188.bin"

CompressedData_189:
	.incbin "data/compressed_189.bin"

CompressedData_18a:
	.incbin "data/compressed_18a.bin"

CompressedData_18b:
	.incbin "data/compressed_18b.bin"

CompressedData_18c:
	.incbin "data/compressed_18c.bin"

CompressedData_18d:
	.incbin "data/compressed_18d.bin"

CompressedData_18e:
	.incbin "data/compressed_18e.bin"

CompressedData_18f:
	.incbin "data/compressed_18f.bin"

CompressedData_190:
	.incbin "data/compressed_190.bin"

CompressedData_191:
	.incbin "data/compressed_191.bin"

CompressedData_192:
	.incbin "data/compressed_192.bin"

CompressedData_193:
	.incbin "data/compressed_193.bin"

CompressedData_194:
	.incbin "data/compressed_194.bin"

CompressedData_195:
	.incbin "data/compressed_195.bin"

CompressedData_196:
	.incbin "data/compressed_196.bin"

CompressedData_197:
	.incbin "data/compressed_197.bin"

CompressedData_198:
	.incbin "data/compressed_198.bin"

CompressedData_199:
	.incbin "data/compressed_199.bin"

CompressedData_19a:
	.incbin "data/compressed_19a.bin"

CompressedData_19b:
	.incbin "data/compressed_19b.bin"

CompressedData_19c:
	.incbin "data/compressed_19c.bin"

CompressedData_19d:
	.incbin "data/compressed_19d.bin"

CompressedData_19e:
	.incbin "data/compressed_19e.bin"

CompressedData_19f:
	.incbin "data/compressed_19f.bin"

CompressedData_1a0:
	.incbin "data/compressed_1a0.bin"

CompressedData_1a1:
	.incbin "data/compressed_1a1.bin"

CompressedData_1a2:
	.incbin "data/compressed_1a2.bin"

CompressedData_1a3:
	.incbin "data/compressed_1a3.bin" READ $00ca

.bank $045 slot 1
.org $0

	.incbin "data/compressed_1a3.bin" SKIP $00ca

CompressedData_1a4:
	.incbin "data/compressed_1a4.bin"

CompressedData_1a5:
	.incbin "data/compressed_1a5.bin"

CompressedData_1a6:
	.incbin "data/compressed_1a6.bin"

CompressedData_1a7:
	.incbin "data/compressed_1a7.bin"

CompressedData_1a8:
	.incbin "data/compressed_1a8.bin"

CompressedData_1a9:
	.incbin "data/compressed_1a9.bin"

CompressedData_1aa:
	.incbin "data/compressed_1aa.bin"

CompressedData_1ab:
	.incbin "data/compressed_1ab.bin"

CompressedData_1ac:
	.incbin "data/compressed_1ac.bin"

CompressedData_1ad:
	.incbin "data/compressed_1ad.bin"

CompressedData_1ae:
	.incbin "data/compressed_1ae.bin"

CompressedData_1af:
	.incbin "data/compressed_1af.bin"

CompressedData_1b0:
	.incbin "data/compressed_1b0.bin"

CompressedData_1b1:
	.incbin "data/compressed_1b1.bin"

CompressedData_1b2:
	.incbin "data/compressed_1b2.bin"

CompressedData_1b3:
	.incbin "data/compressed_1b3.bin"

CompressedData_1b4:
	.incbin "data/compressed_1b4.bin"

CompressedData_1b5:
	.incbin "data/compressed_1b5.bin"

CompressedData_1b6:
	.incbin "data/compressed_1b6.bin"

CompressedData_1b7:
	.incbin "data/compressed_1b7.bin"

CompressedData_1b8:
	.incbin "data/compressed_1b8.bin"

CompressedData_1b9:
	.incbin "data/compressed_1b9.bin"

CompressedData_1ba:
	.incbin "data/compressed_1ba.bin"

CompressedData_1bb:
	.incbin "data/compressed_1bb.bin"

CompressedData_1bc:
	.incbin "data/compressed_1bc.bin"

CompressedData_1bd:
	.incbin "data/compressed_1bd.bin"

CompressedData_1be:
	.incbin "data/compressed_1be.bin"

CompressedData_1bf:
	.incbin "data/compressed_1bf.bin"

CompressedData_1c0:
	.incbin "data/compressed_1c0.bin"

CompressedData_1c1:
	.incbin "data/compressed_1c1.bin"

CompressedData_1c2:
	.incbin "data/compressed_1c2.bin"

CompressedData_1c3:
	.incbin "data/compressed_1c3.bin"

CompressedData_1c4:
	.incbin "data/compressed_1c4.bin"

CompressedData_1c5:
	.incbin "data/compressed_1c5.bin"

CompressedData_1c6:
	.incbin "data/compressed_1c6.bin"

CompressedData_1c7:
	.incbin "data/compressed_1c7.bin"

CompressedData_1c8:
	.incbin "data/compressed_1c8.bin"

CompressedData_1c9:
	.incbin "data/compressed_1c9.bin"

CompressedData_1ca:
	.incbin "data/compressed_1ca.bin"

CompressedData_1cb:
	.incbin "data/compressed_1cb.bin"

CompressedData_1cc:
	.incbin "data/compressed_1cc.bin"

CompressedData_1cd:
	.incbin "data/compressed_1cd.bin"

CompressedData_1ce:
	.incbin "data/compressed_1ce.bin"

CompressedData_1cf:
	.incbin "data/compressed_1cf.bin"

CompressedData_1d0:
	.incbin "data/compressed_1d0.bin" READ $00d4

.bank $046 slot 1
.org $0

	.incbin "data/compressed_1d0.bin" SKIP $00d4

CompressedData_1d1:
	.incbin "data/compressed_1d1.bin"

CompressedData_1d2:
	.incbin "data/compressed_1d2.bin"

CompressedData_1d3:
	.incbin "data/compressed_1d3.bin"

CompressedData_1d4:
	.incbin "data/compressed_1d4.bin"

CompressedData_1d5:
	.incbin "data/compressed_1d5.bin"

CompressedData_1d6:
	.incbin "data/compressed_1d6.bin"

CompressedData_1d7:
	.incbin "data/compressed_1d7.bin"

CompressedData_1d8:
	.incbin "data/compressed_1d8.bin"

CompressedData_1d9:
	.incbin "data/compressed_1d9.bin"

CompressedData_1da:
	.incbin "data/compressed_1da.bin"

CompressedData_1db:
	.incbin "data/compressed_1db.bin"

CompressedData_1dc:
	.incbin "data/compressed_1dc.bin"

CompressedData_1dd:
	.incbin "data/compressed_1dd.bin"

CompressedData_1de:
	.incbin "data/compressed_1de.bin"

CompressedData_1df:
	.incbin "data/compressed_1df.bin"

CompressedData_1e0:
	.incbin "data/compressed_1e0.bin"

CompressedData_1e1:
	.incbin "data/compressed_1e1.bin"

CompressedData_1e2:
	.incbin "data/compressed_1e2.bin"

CompressedData_1e3:
	.incbin "data/compressed_1e3.bin"

CompressedData_1e4:
	.incbin "data/compressed_1e4.bin"

CompressedData_1e5:
	.incbin "data/compressed_1e5.bin"

CompressedData_1e6:
	.incbin "data/compressed_1e6.bin"

CompressedData_1e7:
	.incbin "data/compressed_1e7.bin"

CompressedData_1e8:
	.incbin "data/compressed_1e8.bin"

CompressedData_1e9:
	.incbin "data/compressed_1e9.bin"

CompressedData_1ea:
	.incbin "data/compressed_1ea.bin"

CompressedData_1eb:
	.incbin "data/compressed_1eb.bin"

CompressedData_1ec:
	.incbin "data/compressed_1ec.bin"

CompressedData_1ed:
	.incbin "data/compressed_1ed.bin"

CompressedData_1ee:
	.incbin "data/compressed_1ee.bin"

CompressedData_1ef:
	.incbin "data/compressed_1ef.bin"

CompressedData_1f0:
	.incbin "data/compressed_1f0.bin"

CompressedData_1f1:
	.incbin "data/compressed_1f1.bin"

CompressedData_1f2:
	.incbin "data/compressed_1f2.bin"

CompressedData_1f3:
	.incbin "data/compressed_1f3.bin"

CompressedData_1f4:
	.incbin "data/compressed_1f4.bin"

CompressedData_1f5:
	.incbin "data/compressed_1f5.bin"

CompressedData_1f6:
	.incbin "data/compressed_1f6.bin"

CompressedData_1f7:
	.incbin "data/compressed_1f7.bin"

CompressedData_1f8:
	.incbin "data/compressed_1f8.bin"

CompressedData_1f9:
	.incbin "data/compressed_1f9.bin"

CompressedData_1fa:
	.incbin "data/compressed_1fa.bin"

CompressedData_1fb:
	.incbin "data/compressed_1fb.bin"

CompressedData_1fc:
	.incbin "data/compressed_1fc.bin"

CompressedData_1fd:
	.incbin "data/compressed_1fd.bin"

CompressedData_1fe:
	.incbin "data/compressed_1fe.bin"

CompressedData_1ff:
	.incbin "data/compressed_1ff.bin" READ $015b

.bank $047 slot 1
.org $0

	.incbin "data/compressed_1ff.bin" SKIP $015b

CompressedData_200:
	.incbin "data/compressed_200.bin"

CompressedData_201:
	.incbin "data/compressed_201.bin"

CompressedData_202:
	.incbin "data/compressed_202.bin"

CompressedData_203:
	.incbin "data/compressed_203.bin"

CompressedData_204:
	.incbin "data/compressed_204.bin"

CompressedData_205:
	.incbin "data/compressed_205.bin"

CompressedData_206:
	.incbin "data/compressed_206.bin"

CompressedData_207:
	.incbin "data/compressed_207.bin"

CompressedData_208:
	.incbin "data/compressed_208.bin"

CompressedData_209:
	.incbin "data/compressed_209.bin"

CompressedData_20a:
	.incbin "data/compressed_20a.bin"

CompressedData_20b:
	.incbin "data/compressed_20b.bin"

CompressedData_20c:
	.incbin "data/compressed_20c.bin"

CompressedData_20d:
	.incbin "data/compressed_20d.bin"

CompressedData_20e:
	.incbin "data/compressed_20e.bin"

CompressedData_20f:
	.incbin "data/compressed_20f.bin"

CompressedData_210:
	.incbin "data/compressed_210.bin"

CompressedData_211:
	.incbin "data/compressed_211.bin"

CompressedData_212:
	.incbin "data/compressed_212.bin"

CompressedData_213:
	.incbin "data/compressed_213.bin"

CompressedData_214:
	.incbin "data/compressed_214.bin"

CompressedData_215:
	.incbin "data/compressed_215.bin"

CompressedData_216:
	.incbin "data/compressed_216.bin"

CompressedData_217:
	.incbin "data/compressed_217.bin"

CompressedData_218:
	.incbin "data/compressed_218.bin"

CompressedData_219:
	.incbin "data/compressed_219.bin"

CompressedData_21a:
	.incbin "data/compressed_21a.bin"

CompressedData_21b:
	.incbin "data/compressed_21b.bin"

CompressedData_21c:
	.incbin "data/compressed_21c.bin"

CompressedData_21d:
	.incbin "data/compressed_21d.bin"

CompressedData_21e:
	.incbin "data/compressed_21e.bin"

CompressedData_21f:
	.incbin "data/compressed_21f.bin"

CompressedData_220:
	.incbin "data/compressed_220.bin"

CompressedData_221:
	.incbin "data/compressed_221.bin" READ $03dd

.bank $048 slot 1
.org $0

	.incbin "data/compressed_221.bin" SKIP $03dd

CompressedData_222:
	.incbin "data/compressed_222.bin"

CompressedData_223:
	.incbin "data/compressed_223.bin"

CompressedData_224:
	.incbin "data/compressed_224.bin"

CompressedData_225:
	.incbin "data/compressed_225.bin"

CompressedData_226:
	.incbin "data/compressed_226.bin"

CompressedData_227:
	.incbin "data/compressed_227.bin"

CompressedData_228:
	.incbin "data/compressed_228.bin"

CompressedData_229:
	.incbin "data/compressed_229.bin"

CompressedData_22a:
	.incbin "data/compressed_22a.bin"

CompressedData_22b:
	.incbin "data/compressed_22b.bin"

CompressedData_22c:
	.incbin "data/compressed_22c.bin"

CompressedData_22d:
	.incbin "data/compressed_22d.bin"

CompressedData_22e:
	.incbin "data/compressed_22e.bin"

CompressedData_22f:
	.incbin "data/compressed_22f.bin"

CompressedData_230:
	.incbin "data/compressed_230.bin"

CompressedData_231:
	.incbin "data/compressed_231.bin"

CompressedData_232:
	.incbin "data/compressed_232.bin"

CompressedData_233:
	.incbin "data/compressed_233.bin"

CompressedData_234:
	.incbin "data/compressed_234.bin"

CompressedData_235:
	.incbin "data/compressed_235.bin"

CompressedData_236:
	.incbin "data/compressed_236.bin"

CompressedData_237:
	.incbin "data/compressed_237.bin"

CompressedData_238:
	.incbin "data/compressed_238.bin" READ $037c

.bank $049 slot 1
.org $0

	.incbin "data/compressed_238.bin" SKIP $037c

CompressedData_239:
	.incbin "data/compressed_239.bin"

CompressedData_23a:
	.incbin "data/compressed_23a.bin"

CompressedData_23b:
	.incbin "data/compressed_23b.bin"

CompressedData_23c:
	.incbin "data/compressed_23c.bin"

CompressedData_23d:
	.incbin "data/compressed_23d.bin"

CompressedData_23e:
	.incbin "data/compressed_23e.bin"

CompressedData_23f:
	.incbin "data/compressed_23f.bin"

CompressedData_240:
	.incbin "data/compressed_240.bin"

CompressedData_241:
	.incbin "data/compressed_241.bin"

CompressedData_242:
	.incbin "data/compressed_242.bin"

CompressedData_243:
	.incbin "data/compressed_243.bin"

CompressedData_244:
	.incbin "data/compressed_244.bin"

CompressedData_245:
	.incbin "data/compressed_245.bin"

CompressedData_246:
	.incbin "data/compressed_246.bin"

CompressedData_247:
	.incbin "data/compressed_247.bin"

CompressedData_248:
	.incbin "data/compressed_248.bin"

CompressedData_249:
	.incbin "data/compressed_249.bin"

CompressedData_24a:
	.incbin "data/compressed_24a.bin"

CompressedData_24b:
	.incbin "data/compressed_24b.bin"

CompressedData_24c:
	.incbin "data/compressed_24c.bin"

CompressedData_24d:
	.incbin "data/compressed_24d.bin"

CompressedData_24e:
	.incbin "data/compressed_24e.bin" READ $05a7

.bank $04a slot 1
.org $0

	.incbin "data/compressed_24e.bin" SKIP $05a7

CompressedData_24f:
	.incbin "data/compressed_24f.bin"

CompressedData_250:
	.incbin "data/compressed_250.bin"

CompressedData_251:
	.incbin "data/compressed_251.bin"

CompressedData_252:
	.incbin "data/compressed_252.bin"

CompressedData_253:
	.incbin "data/compressed_253.bin"

CompressedData_254:
	.incbin "data/compressed_254.bin"

CompressedData_255:
	.incbin "data/compressed_255.bin"

CompressedData_256:
	.incbin "data/compressed_256.bin"

CompressedData_257:
	.incbin "data/compressed_257.bin"

CompressedData_258:
	.incbin "data/compressed_258.bin"

CompressedData_259:
	.incbin "data/compressed_259.bin"

CompressedData_25a:
	.incbin "data/compressed_25a.bin"

CompressedData_25b:
	.incbin "data/compressed_25b.bin"

CompressedData_25c:
	.incbin "data/compressed_25c.bin"

CompressedData_25d:
	.incbin "data/compressed_25d.bin"

CompressedData_25e:
	.incbin "data/compressed_25e.bin"

CompressedData_25f:
	.incbin "data/compressed_25f.bin"

CompressedData_260:
	.incbin "data/compressed_260.bin"

CompressedData_261:
	.incbin "data/compressed_261.bin"

CompressedData_262:
	.incbin "data/compressed_262.bin"

CompressedData_263:
	.incbin "data/compressed_263.bin"

CompressedData_264:
	.incbin "data/compressed_264.bin"

CompressedData_265:
	.incbin "data/compressed_265.bin"

CompressedData_266:
	.incbin "data/compressed_266.bin"

CompressedData_267:
	.incbin "data/compressed_267.bin"

CompressedData_268:
	.incbin "data/compressed_268.bin"

CompressedData_269:
	.incbin "data/compressed_269.bin"

CompressedData_26a:
	.incbin "data/compressed_26a.bin"

CompressedData_26b:
	.incbin "data/compressed_26b.bin"

CompressedData_26c:
	.incbin "data/compressed_26c.bin"

CompressedData_26d:
	.incbin "data/compressed_26d.bin"

CompressedData_26e:
	.incbin "data/compressed_26e.bin" READ $03c4

.bank $04b slot 1
.org $0

	.incbin "data/compressed_26e.bin" SKIP $03c4

CompressedData_26f:
	.incbin "data/compressed_26f.bin"

CompressedData_270:
	.incbin "data/compressed_270.bin"

CompressedData_271:
	.incbin "data/compressed_271.bin"

CompressedData_272:
	.incbin "data/compressed_272.bin"

CompressedData_273:
	.incbin "data/compressed_273.bin"

CompressedData_274:
	.incbin "data/compressed_274.bin"

CompressedData_275:
	.incbin "data/compressed_275.bin"

CompressedData_276:
	.incbin "data/compressed_276.bin"

CompressedData_277:
	.incbin "data/compressed_277.bin"

CompressedData_278:
	.incbin "data/compressed_278.bin"

CompressedData_279:
	.incbin "data/compressed_279.bin"

CompressedData_27a:
	.incbin "data/compressed_27a.bin"

CompressedData_27b:
	.incbin "data/compressed_27b.bin"

CompressedData_27c:
	.incbin "data/compressed_27c.bin"

CompressedData_27d:
	.incbin "data/compressed_27d.bin"

CompressedData_27e:
	.incbin "data/compressed_27e.bin"

CompressedData_27f:
	.incbin "data/compressed_27f.bin"

CompressedData_280:
	.incbin "data/compressed_280.bin"

CompressedData_281:
	.incbin "data/compressed_281.bin"

CompressedData_282:
	.incbin "data/compressed_282.bin"

CompressedData_283:
	.incbin "data/compressed_283.bin" READ $049b

.bank $04c slot 1
.org $0

	.incbin "data/compressed_283.bin" SKIP $049b

CompressedData_284:
	.incbin "data/compressed_284.bin"

CompressedData_285:
	.incbin "data/compressed_285.bin"

CompressedData_286:
	.incbin "data/compressed_286.bin"

CompressedData_287:
	.incbin "data/compressed_287.bin"

CompressedData_288:
	.incbin "data/compressed_288.bin"

CompressedData_289:
	.incbin "data/compressed_289.bin"

CompressedData_28a:
	.incbin "data/compressed_28a.bin"

CompressedData_28b:
	.incbin "data/compressed_28b.bin" READ $243e

.bank $04d slot 1
.org $0

	.incbin "data/compressed_28b.bin" SKIP $243e

CompressedData_28c:
	.incbin "data/compressed_28c.bin"

CompressedData_28d:
	.incbin "data/compressed_28d.bin"

CompressedData_28e:
	.incbin "data/compressed_28e.bin"

CompressedData_28f:
	.incbin "data/compressed_28f.bin" READ $180d

.bank $04e slot 1
.org $0

	.incbin "data/compressed_28f.bin" SKIP $180d

CompressedData_290:
	.incbin "data/compressed_290.bin"

CompressedData_291:
	.incbin "data/compressed_291.bin"

CompressedData_292:
	.incbin "data/compressed_292.bin"

CompressedData_293:
	.incbin "data/compressed_293.bin"

CompressedData_294:
	.incbin "data/compressed_294.bin"

CompressedData_295:
	.incbin "data/compressed_295.bin"

CompressedData_296:
	.incbin "data/compressed_296.bin"

CompressedData_297:
	.incbin "data/compressed_297.bin"

CompressedData_298:
	.incbin "data/compressed_298.bin"

CompressedData_299:
	.incbin "data/compressed_299.bin"

CompressedData_29a:
	.incbin "data/compressed_29a.bin" READ $0cea

.bank $04f slot 1
.org $0

	.incbin "data/compressed_29a.bin" SKIP $0cea

CompressedData_29b:
	.incbin "data/compressed_29b.bin"

CompressedData_29c:
	.incbin "data/compressed_29c.bin"

CompressedData_29d:
	.incbin "data/compressed_29d.bin"

CompressedData_29e:
	.incbin "data/compressed_29e.bin"

CompressedData_29f:
	.incbin "data/compressed_29f.bin"

CompressedData_2a0:
	.incbin "data/compressed_2a0.bin"

CompressedData_2a1:
	.incbin "data/compressed_2a1.bin"

CompressedData_2a2:
	.incbin "data/compressed_2a2.bin"

CompressedData_2a3:
	.incbin "data/compressed_2a3.bin"

CompressedData_2a4:
	.incbin "data/compressed_2a4.bin"

CompressedData_2a5:
	.incbin "data/compressed_2a5.bin"

CompressedData_2a6:
	.incbin "data/compressed_2a6.bin"

CompressedData_2a7:
	.incbin "data/compressed_2a7.bin"

CompressedDataEnd:
;
	.db $00                                                  ; $e2fe : $00
	.db $00                                                  ; $e2ff : $00
	jmp $18e723.l                                                  ; $e300 : $5c, $23, $e7, $18


	cmp $00ff20.l, X                                                  ; $e304 : $df, $20, $ff, $00
	sbc $00ff00.l, X                                                  ; $e308 : $ff, $00, $ff, $00
	inc $fe01.w, X                                                  ; $e30c : $fe, $01, $fe
	ora ($00, X)                                                  ; $e30f : $01, $00
	.db $00                                                  ; $e311 : $00
	.db $00                                                  ; $e312 : $00
	.db $00                                                  ; $e313 : $00
	.db $00                                                  ; $e314 : $00
	.db $00                                                  ; $e315 : $00
	.db $00                                                  ; $e316 : $00
	.db $00                                                  ; $e317 : $00
	.db $00                                                  ; $e318 : $00
	.db $00                                                  ; $e319 : $00
	.db $00                                                  ; $e31a : $00
	.db $00                                                  ; $e31b : $00
	.db $00                                                  ; $e31c : $00
	.db $00                                                  ; $e31d : $00
	.db $00                                                  ; $e31e : $00
	.db $00                                                  ; $e31f : $00
	bra br_4f_e322                                                  ; $e320 : $80, $00

br_4f_e322:
	bra br_4f_e324                                                  ; $e322 : $80, $00

br_4f_e324:
	bra br_4f_e326                                                  ; $e324 : $80, $00

br_4f_e326:
	rts                                                  ; $e326 : $60


	ldy #$70.b                                                  ; $e327 : $a0, $70
	.db $80, $cf

	stx $e5                                                  ; $e32b : $86, $e5
	cmp ($61, X)                                                  ; $e32d : $c1, $61
	adc [$00], Y                                                  ; $e32f : $77, $00
	.db $00                                                  ; $e331 : $00
	.db $00                                                  ; $e332 : $00
	.db $00                                                  ; $e333 : $00
	.db $00                                                  ; $e334 : $00
	.db $00                                                  ; $e335 : $00
	.db $30, $30                                                  ; $e336 : $30, $30

	tsb $000c.w                                                  ; $e338 : $0c, $0c, $00
	asl $02                                                  ; $e33b : $06, $02
	ora $80, S                                                  ; $e33d : $03, $80
	ora ($00, X)                                                  ; $e33f : $01, $00
	.db $00                                                  ; $e341 : $00
	.db $00                                                  ; $e342 : $00
	.db $00                                                  ; $e343 : $00
	.db $00                                                  ; $e344 : $00
	.db $00                                                  ; $e345 : $00
	php                                                  ; $e346 : $08
	.db $00                                                  ; $e347 : $00
	clc                                                  ; $e348 : $18
	.db $00                                                  ; $e349 : $00
	clc                                                  ; $e34a : $18
	.db $00                                                  ; $e34b : $00
	bcs br_4f_e34e                                                  ; $e34c : $b0, $00

br_4f_e34e:
	.db $f0, $80

	.db $00                                                  ; $e350 : $00
	.db $00                                                  ; $e351 : $00
	.db $00                                                  ; $e352 : $00
	.db $00                                                  ; $e353 : $00
	.db $00                                                  ; $e354 : $00
	.db $00                                                  ; $e355 : $00
	.db $00                                                  ; $e356 : $00
	.db $00                                                  ; $e357 : $00
	.db $00                                                  ; $e358 : $00
	.db $00                                                  ; $e359 : $00
	jsr $0020.w                                                  ; $e35a : $20, $20, $00
	.db $00                                                  ; $e35d : $00
	php                                                  ; $e35e : $08
	dey                                                  ; $e35f : $88
	ora [$08], Y                                                  ; $e360 : $17, $08
	ora ($0c, S), Y                                                  ; $e362 : $13, $0c
	tsc                                                  ; $e364 : $3b
	tsb $2b                                                  ; $e365 : $04, $2b
	trb $2f                                                  ; $e367 : $14, $2f
	bpl br_4f_e39a                                                  ; $e369 : $10, $2f

	bpl br_4f_e3ec                                                  ; $e36b : $10, $7f

	.db $00                                                  ; $e36d : $00
	adc $000000.l, X                                                  ; $e36e : $7f, $00, $00, $00
	.db $00                                                  ; $e372 : $00
	.db $00                                                  ; $e373 : $00
	.db $00                                                  ; $e374 : $00
	.db $00                                                  ; $e375 : $00
	.db $00                                                  ; $e376 : $00
	.db $00                                                  ; $e377 : $00
	.db $00                                                  ; $e378 : $00
	.db $00                                                  ; $e379 : $00
	.db $00                                                  ; $e37a : $00
	.db $00                                                  ; $e37b : $00
	.db $00                                                  ; $e37c : $00
	.db $00                                                  ; $e37d : $00
	.db $00                                                  ; $e37e : $00
	.db $00                                                  ; $e37f : $00
	jsr ($e103.w, X)                                                  ; $e380 : $fc, $03, $e1
	ora $b0c646.l, X                                                  ; $e383 : $1f, $46, $c6, $b0
	.db $70, $c4                                                  ; $e387 : $70, $c4

	bit $12e0.w, X                                                  ; $e389 : $3c, $e0, $12
	sbc ($18), Y                                                  ; $e38c : $f1, $18
	cpy #$24.b                                                  ; $e38e : $c0, $24
	.db $00                                                  ; $e390 : $00
	.db $00                                                  ; $e391 : $00
	.db $00                                                  ; $e392 : $00
	.db $00                                                  ; $e393 : $00
	and $0f00.w, Y                                                  ; $e394 : $39, $00, $0f
	.db $00                                                  ; $e397 : $00
	ora $00, S                                                  ; $e398 : $03, $00

br_4f_e39a:
	ora $0600.w                                                  ; $e39a : $0d, $00, $06
	.db $00                                                  ; $e39d : $00
	ina                                                  ; $e39e : $1a
	ora ($28, X)                                                  ; $e39f : $01, $28
	and [$0c]                                                  ; $e3a1 : $27, $0c
	ora $011c03.l                                                  ; $e3a3 : $0f, $03, $1c, $01
	rol $5a07.w, X                                                  ; $e3a7 : $3e, $07, $5a
	ora [$30]                                                  ; $e3aa : $07, $30
	sta $618e60.l, X                                                  ; $e3ac : $9f, $60, $8e, $61
	bne br_4f_e3ba                                                  ; $e3b0 : $d0, $08

	jsr ($e00c.w, X)                                                  ; $e3b2 : $fc, $0c, $e0
	tsb $c0                                                  ; $e3b5 : $04, $c0
	cop $82.b                                                  ; $e3b7 : $02, $82
	.db $62                                                  ; $e3b9 : $62

br_4f_e3ba:
	cpy #$3c.b                                                  ; $e3ba : $c0, $3c
	.db $00                                                  ; $e3bc : $00
	dey                                                  ; $e3bd : $88
	.db $00                                                  ; $e3be : $00
	sbc $10f4.w, Y                                                  ; $e3bf : $f9, $f4, $10
	pea $c400.w                                                  ; $e3c2 : $f4, $00, $c4
	.db $00                                                  ; $e3c5 : $00
	cpx $9c30.w                                                  ; $e3c6 : $ec, $30, $9c
	rts                                                  ; $e3c9 : $60


	dey                                                  ; $e3ca : $88
	jmp ($9e7c.w, X)                                                  ; $e3cb : $7c, $7c, $9e


	bit $08de.w                                                  ; $e3ce : $2c, $de, $08
	tya                                                  ; $e3d1 : $98
	php                                                  ; $e3d2 : $08
	php                                                  ; $e3d3 : $08
	.db $00                                                  ; $e3d4 : $00
	sec                                                  ; $e3d5 : $38
	jsr $0030.w                                                  ; $e3d6 : $20, $30, $00
	sei                                                  ; $e3d9 : $78
	php                                                  ; $e3da : $08
	jmp ($fe1c.w, X)                                                  ; $e3db : $7c, $1c, $fe


	tsb $5ffe.w                                                  ; $e3de : $0c, $fe, $5f
	jsr $205f.w                                                  ; $e3e1 : $20, $5f, $20
	eor $205f20.l, X                                                  ; $e3e4 : $5f, $20, $5f, $20
	eor $205f20.l, X                                                  ; $e3e8 : $5f, $20, $5f, $20

br_4f_e3ec:
	asl $2c20.w, X                                                  ; $e3ec : $1e, $20, $2c
	bpl br_4f_e3f1                                                  ; $e3ef : $10, $00

br_4f_e3f1:
	.db $00                                                  ; $e3f1 : $00
	.db $00                                                  ; $e3f2 : $00
	.db $00                                                  ; $e3f3 : $00
	.db $00                                                  ; $e3f4 : $00
	.db $00                                                  ; $e3f5 : $00
	.db $00                                                  ; $e3f6 : $00
	.db $00                                                  ; $e3f7 : $00
	.db $00                                                  ; $e3f8 : $00
	.db $00                                                  ; $e3f9 : $00
	.db $00                                                  ; $e3fa : $00
	.db $00                                                  ; $e3fb : $00
	.db $00                                                  ; $e3fc : $00
	.db $00                                                  ; $e3fd : $00
	.db $00                                                  ; $e3fe : $00
	.db $00                                                  ; $e3ff : $00
	cpy #$24.b                                                  ; $e400 : $c0, $24
	sta $6158.w, Y                                                  ; $e402 : $99, $58, $61
	cpx #$85.b                                                  ; $e405 : $e0, $85
	tsb $01                                                  ; $e407 : $04, $01
	.db $00                                                  ; $e409 : $00
	phd                                                  ; $e40a : $0b
	asl                                                  ; $e40b : $0a
	phd                                                  ; $e40c : $0b
	asl                                                  ; $e40d : $0a
	phd                                                  ; $e40e : $0b
	asl                                                  ; $e40f : $0a
	ina                                                  ; $e410 : $1a
	ora ($22, X)                                                  ; $e411 : $01, $22
	.db $00                                                  ; $e413 : $00
	cop $00.b                                                  ; $e414 : $02, $00
	cop $00.b                                                  ; $e416 : $02, $00
	asl $00                                                  ; $e418 : $06, $00
	tsb $00                                                  ; $e41a : $04, $00
	tsb $00                                                  ; $e41c : $04, $00
	tsb $00                                                  ; $e41e : $04, $00
	sta $43bc60.l, X                                                  ; $e420 : $9f, $60, $bc, $43
	jmp $441802.l                                                  ; $e424 : $5c, $02, $18, $44


	rol $d940.w, X                                                  ; $e428 : $3e, $40, $d9
	.db $00                                                  ; $e42b : $00
	tyx                                                  ; $e42c : $bb
	rti                                                  ; $e42d : $40


	adc $c2, X                                                  ; $e42e : $75, $c2
	.db $00                                                  ; $e430 : $00
	sta ($00), Y                                                  ; $e431 : $91, $00
	sta ($00, S), Y                                                  ; $e433 : $93, $00
	sbc ($00, S), Y                                                  ; $e435 : $f3, $00
	lda [$00]                                                  ; $e437 : $a7, $00
	lda [$00]                                                  ; $e439 : $a7, $00
	rol $00                                                  ; $e43b : $26, $00
	ora $0f00.w                                                  ; $e43d : $0d, $00, $0f
	rep #$1c.b                                                  ; $e440 : $c2, $1c
	adc ($0c)                                                  ; $e442 : $72, $0c
	sbc $7504.w, Y                                                  ; $e444 : $f9, $04, $75
	.db $00                                                  ; $e447 : $00
	sbc ($04, S), Y                                                  ; $e448 : $f3, $04
	clc                                                  ; $e44a : $18
	asl $19                                                  ; $e44b : $06, $19
	asl $bb                                                  ; $e44d : $06, $bb
	tsb $00                                                  ; $e44f : $04, $00
	inc $9e00.w, X                                                  ; $e451 : $fe, $00, $9e
	.db $00                                                  ; $e454 : $00
	ora $008f00.l                                                  ; $e455 : $0f, $00, $8f, $00
	ora $00e700.l                                                  ; $e459 : $0f, $00, $e7, $00
	sbc [$00]                                                  ; $e45d : $e7, $00
	cmp [$2c]                                                  ; $e45f : $c7, $2c
	bpl br_4f_e47b                                                  ; $e461 : $10, $18

	.db $00                                                  ; $e463 : $00
	clc                                                  ; $e464 : $18
	.db $00                                                  ; $e465 : $00
	php                                                  ; $e466 : $08
	.db $00                                                  ; $e467 : $00
	.db $00                                                  ; $e468 : $00
	.db $00                                                  ; $e469 : $00
	.db $00                                                  ; $e46a : $00
	.db $00                                                  ; $e46b : $00
	.db $00                                                  ; $e46c : $00
	.db $00                                                  ; $e46d : $00
	.db $00                                                  ; $e46e : $00
	.db $00                                                  ; $e46f : $00
	.db $00                                                  ; $e470 : $00
	.db $00                                                  ; $e471 : $00
	.db $00                                                  ; $e472 : $00
	.db $00                                                  ; $e473 : $00
	.db $00                                                  ; $e474 : $00
	.db $00                                                  ; $e475 : $00
	.db $00                                                  ; $e476 : $00
	.db $00                                                  ; $e477 : $00
	.db $00                                                  ; $e478 : $00
	.db $00                                                  ; $e479 : $00
	.db $00                                                  ; $e47a : $00

br_4f_e47b:
	.db $00                                                  ; $e47b : $00
	.db $00                                                  ; $e47c : $00
	.db $00                                                  ; $e47d : $00
	.db $00                                                  ; $e47e : $00
	.db $00                                                  ; $e47f : $00
	ora $0704.w                                                  ; $e480 : $0d, $04, $07
	ora [$05]                                                  ; $e483 : $07, $05
	ora $02, S                                                  ; $e485 : $03, $02
	ora ($01, X)                                                  ; $e487 : $01, $01
	.db $00                                                  ; $e489 : $00
	.db $00                                                  ; $e48a : $00
	.db $00                                                  ; $e48b : $00
	.db $00                                                  ; $e48c : $00
	.db $00                                                  ; $e48d : $00
	.db $00                                                  ; $e48e : $00
	.db $00                                                  ; $e48f : $00
	cop $00.b                                                  ; $e490 : $02, $00
	.db $00                                                  ; $e492 : $00
	.db $00                                                  ; $e493 : $00
	.db $00                                                  ; $e494 : $00
	.db $00                                                  ; $e495 : $00
	.db $00                                                  ; $e496 : $00
	.db $00                                                  ; $e497 : $00
	.db $00                                                  ; $e498 : $00
	.db $00                                                  ; $e499 : $00
	.db $00                                                  ; $e49a : $00
	.db $00                                                  ; $e49b : $00
	.db $00                                                  ; $e49c : $00
	.db $00                                                  ; $e49d : $00
	.db $00                                                  ; $e49e : $00
	.db $00                                                  ; $e49f : $00
	and $bf06.w, Y                                                  ; $e4a0 : $39, $06, $bf

br_4f_e4a3:
	bra br_4f_e4a3                                                  ; $e4a3 : $80, $fe

	sta $fc, S                                                  ; $e4a5 : $83, $fc
	ora $ff, S                                                  ; $e4a7 : $03, $ff
	.db $00                                                  ; $e4a9 : $00
	sbc $00cf00.l, X                                                  ; $e4aa : $ff, $00, $cf, $00
	cpy #$c000.w                                                  ; $e4ae : $c0, $00, $c0
	ora [$40]                                                  ; $e4b1 : $07, $40
	tsb $02                                                  ; $e4b3 : $04, $02
	ora $00, S                                                  ; $e4b5 : $03, $00
	ora ($00, X)                                                  ; $e4b7 : $01, $00
	.db $00                                                  ; $e4b9 : $00
	.db $00                                                  ; $e4ba : $00
	.db $00                                                  ; $e4bb : $00
	.db $00                                                  ; $e4bc : $00
	.db $00                                                  ; $e4bd : $00
	.db $00                                                  ; $e4be : $00
	.db $00                                                  ; $e4bf : $00
	ror                                                  ; $e4c0 : $6a
	tsb $9d                                                  ; $e4c1 : $04, $9d
	cop $7e.b                                                  ; $e4c3 : $02, $7e
	ora ($0e, X)                                                  ; $e4c5 : $01, $0e
	cpx #$00ff.w                                                  ; $e4c7 : $e0, $ff, $00
	inc $f000.w, X                                                  ; $e4ca : $fe, $00, $f0
	.db $00                                                  ; $e4cd : $00
	.db $00                                                  ; $e4ce : $00
	.db $00                                                  ; $e4cf : $00

br_4f_e4d0:
	.db $00                                                  ; $e4d0 : $00
	sta [$00], Y                                                  ; $e4d1 : $97, $00
	adc [$00]                                                  ; $e4d3 : $67, $00
	sta ($00, S), Y                                                  ; $e4d5 : $93, $00
	sbc ($00), Y                                                  ; $e4d7 : $f1, $00
	.db $00                                                  ; $e4d9 : $00
	.db $00                                                  ; $e4da : $00
	.db $00                                                  ; $e4db : $00
	.db $00                                                  ; $e4dc : $00
	.db $00                                                  ; $e4dd : $00
	.db $00                                                  ; $e4de : $00
	.db $00                                                  ; $e4df : $00
	.db $00                                                  ; $e4e0 : $00
	.db $00                                                  ; $e4e1 : $00
	.db $00                                                  ; $e4e2 : $00
	.db $00                                                  ; $e4e3 : $00
	.db $00                                                  ; $e4e4 : $00
	.db $00                                                  ; $e4e5 : $00
	.db $00                                                  ; $e4e6 : $00
	.db $00                                                  ; $e4e7 : $00
	.db $00                                                  ; $e4e8 : $00
	.db $00                                                  ; $e4e9 : $00
	.db $00                                                  ; $e4ea : $00
	.db $00                                                  ; $e4eb : $00
	ora ($06, X)                                                  ; $e4ec : $01, $06
	ora ($01, X)                                                  ; $e4ee : $01, $01
	.db $00                                                  ; $e4f0 : $00
	.db $00                                                  ; $e4f1 : $00
	.db $00                                                  ; $e4f2 : $00
	.db $00                                                  ; $e4f3 : $00
	.db $00                                                  ; $e4f4 : $00
	.db $00                                                  ; $e4f5 : $00
	.db $00                                                  ; $e4f6 : $00
	.db $00                                                  ; $e4f7 : $00
	.db $00                                                  ; $e4f8 : $00
	.db $00                                                  ; $e4f9 : $00
	tsb $0000.w                                                  ; $e4fa : $0c, $00, $00
	.db $00                                                  ; $e4fd : $00
	.db $00                                                  ; $e4fe : $00
	.db $00                                                  ; $e4ff : $00
	.db $00                                                  ; $e500 : $00
	.db $00                                                  ; $e501 : $00
	.db $00                                                  ; $e502 : $00
	.db $00                                                  ; $e503 : $00
	tsb $04                                                  ; $e504 : $04, $04
	tsb $00                                                  ; $e506 : $04, $00
	cop $02.b                                                  ; $e508 : $02, $02
	ora $01, S                                                  ; $e50a : $03, $01
	ora ($01, X)                                                  ; $e50c : $01, $01
	.db $00                                                  ; $e50e : $00
	.db $00                                                  ; $e50f : $00
	.db $00                                                  ; $e510 : $00
	.db $00                                                  ; $e511 : $00
	.db $00                                                  ; $e512 : $00
	.db $00                                                  ; $e513 : $00
	.db $00                                                  ; $e514 : $00
	tsb $02                                                  ; $e515 : $04, $02
	cop $01.b                                                  ; $e517 : $02, $01
	ora $00, S                                                  ; $e519 : $03, $00
	ora ($00, X)                                                  ; $e51b : $01, $00
	ora ($80, X)                                                  ; $e51d : $01, $80
	.db $00                                                  ; $e51f : $00
	.db $00                                                  ; $e520 : $00
	.db $00                                                  ; $e521 : $00
	.db $00                                                  ; $e522 : $00
	.db $00                                                  ; $e523 : $00
	clc                                                  ; $e524 : $18
	php                                                  ; $e525 : $08
	tsb $080c.w                                                  ; $e526 : $0c, $0c, $08
	.db $00                                                  ; $e529 : $00
	tsb $04                                                  ; $e52a : $04, $04
	eor $45                                                  ; $e52c : $45, $45
	lda ($a3, S), Y                                                  ; $e52e : $b3, $a3
	.db $00                                                  ; $e530 : $00
	.db $00                                                  ; $e531 : $00
	.db $00                                                  ; $e532 : $00
	.db $00                                                  ; $e533 : $00
	.db $00                                                  ; $e534 : $00
	php                                                  ; $e535 : $08
	.db $00                                                  ; $e536 : $00
	tsb $0404.w                                                  ; $e537 : $0c, $04, $04
	.db $82                                                  ; $e53a : $82

	stx $82                                                  ; $e53b : $86, $82
	cmp [$41]                                                  ; $e53d : $c7, $41
	cmp $00, S                                                  ; $e53f : $c3, $00
	.db $00                                                  ; $e541 : $00
	.db $00                                                  ; $e542 : $00
	.db $00                                                  ; $e543 : $00

br_4f_e544:
	.db $00                                                  ; $e544 : $00
	.db $00                                                  ; $e545 : $00

br_4f_e546:
	.db $00                                                  ; $e546 : $00
	.db $00                                                  ; $e547 : $00

br_4f_e548:
	.db $00                                                  ; $e548 : $00
	.db $00                                                  ; $e549 : $00
	.db $00                                                  ; $e54a : $00
	.db $00                                                  ; $e54b : $00
	.db $00                                                  ; $e54c : $00
	.db $00                                                  ; $e54d : $00
	bra br_4f_e4d0                                                  ; $e54e : $80, $80

	.db $00                                                  ; $e550 : $00

br_4f_e551:
	.db $00                                                  ; $e551 : $00
	.db $00                                                  ; $e552 : $00

br_4f_e553:
	.db $00                                                  ; $e553 : $00
	.db $00                                                  ; $e554 : $00

br_4f_e555:
	.db $00                                                  ; $e555 : $00
	.db $00                                                  ; $e556 : $00
	.db $00                                                  ; $e557 : $00
	.db $00                                                  ; $e558 : $00
	.db $00                                                  ; $e559 : $00
	.db $00                                                  ; $e55a : $00
	.db $00                                                  ; $e55b : $00
	.db $00                                                  ; $e55c : $00
	.db $00                                                  ; $e55d : $00
	.db $00                                                  ; $e55e : $00
	bra br_4f_e561                                                  ; $e55f : $80, $00

br_4f_e561:
	ora ($01, X)                                                  ; $e561 : $01, $01
	.db $00                                                  ; $e563 : $00
	.db $00                                                  ; $e564 : $00
	.db $00                                                  ; $e565 : $00
	.db $00                                                  ; $e566 : $00
	.db $00                                                  ; $e567 : $00
	.db $00                                                  ; $e568 : $00
	.db $00                                                  ; $e569 : $00
	.db $00                                                  ; $e56a : $00
	ora ($00, X)                                                  ; $e56b : $01, $00
	ora ($00, X)                                                  ; $e56d : $01, $00
	ora $00, S                                                  ; $e56f : $03, $00
	.db $00                                                  ; $e571 : $00
	.db $00                                                  ; $e572 : $00
	.db $00                                                  ; $e573 : $00
	.db $00                                                  ; $e574 : $00
	.db $00                                                  ; $e575 : $00
	.db $00                                                  ; $e576 : $00
	.db $00                                                  ; $e577 : $00
	.db $00                                                  ; $e578 : $00
	.db $00                                                  ; $e579 : $00
	.db $00                                                  ; $e57a : $00
	.db $00                                                  ; $e57b : $00
	.db $00                                                  ; $e57c : $00
	.db $00                                                  ; $e57d : $00
	.db $00                                                  ; $e57e : $00
	.db $00                                                  ; $e57f : $00
	eor ($03, X)                                                  ; $e580 : $41, $03
	cpy $c3                                                  ; $e582 : $c4, $c3

Call_4f_e584:
	mvn $53, $c8                                                  ; $e584 : $54, $c8, $53
	cpy #$c658.w                                                  ; $e587 : $c0, $58, $c6
	rti                                                  ; $e58a : $40


	dec $9068.w, X                                                  ; $e58b : $de, $68, $90
	sta $80a0.w, X                                                  ; $e58e : $9d, $a0, $80
	.db $00                                                  ; $e591 : $00
	.db $00                                                  ; $e592 : $00
	.db $00                                                  ; $e593 : $00
	.db $00                                                  ; $e594 : $00
	ora $00, S                                                  ; $e595 : $03, $00
	ora $001f00.l                                                  ; $e597 : $0f, $00, $1f, $00
	and $003f00.l, X                                                  ; $e59b : $3f, $00, $3f, $00
	rol $30aa.w, X                                                  ; $e59f : $3e, $aa, $30
	sbc $79, S                                                  ; $e5a2 : $e3, $79
	sbc ($7d, S), Y                                                  ; $e5a4 : $f3, $7d
	cmp ($1e), Y                                                  ; $e5a6 : $d1, $1e
	beq br_4f_e5d9                                                  ; $e5a8 : $f0, $2f

	cpy #$bc3f.w                                                  ; $e5aa : $c0, $3f, $bc
	and $416798.l, X                                                  ; $e5ad : $3f, $98, $67, $41
	adc ($20, X)                                                  ; $e5b1 : $61, $20
	adc #$20.b                                                  ; $e5b3 : $69, $20
	adc ($20, S), Y                                                  ; $e5b5 : $73, $20
	bmi br_4f_e5b9                                                  ; $e5b7 : $30, $00

br_4f_e5b9:
	cpx #$f800.w                                                  ; $e5b9 : $e0, $00, $f8
	bit $00fe.w, X                                                  ; $e5bc : $3c, $fe, $00
	cmp [$00]                                                  ; $e5bf : $c7, $00
	.db $00                                                  ; $e5c1 : $00
	bra br_4f_e544                                                  ; $e5c2 : $80, $80

	bra br_4f_e546                                                  ; $e5c4 : $80, $80

	bra br_4f_e548                                                  ; $e5c6 : $80, $80

	bra br_4f_e5ca                                                  ; $e5c8 : $80, $00

br_4f_e5ca:
	.db $00                                                  ; $e5ca : $00
	cpy #$8040.w                                                  ; $e5cb : $c0, $40, $80
	rti                                                  ; $e5ce : $40


	bra br_4f_e551                                                  ; $e5cf : $80, $80

	bra br_4f_e553                                                  ; $e5d1 : $80, $80

	bra br_4f_e555                                                  ; $e5d3 : $80, $80

	bra br_4f_e5d7                                                  ; $e5d5 : $80, $00

br_4f_e5d7:
	bra br_4f_e5d9                                                  ; $e5d7 : $80, $00

br_4f_e5d9:
	.db $00                                                  ; $e5d9 : $00
	.db $00                                                  ; $e5da : $00
	cpy #$4000.w                                                  ; $e5db : $c0, $00, $40
	.db $00                                                  ; $e5de : $00
	.db $00                                                  ; $e5df : $00
	ora ($03, X)                                                  ; $e5e0 : $01, $03
	cop $01.b                                                  ; $e5e2 : $02, $01
	.db $00                                                  ; $e5e4 : $00
	ora ($00, X)                                                  ; $e5e5 : $01, $00
	ora ($01, X)                                                  ; $e5e7 : $01, $01
	.db $00                                                  ; $e5e9 : $00
	.db $00                                                  ; $e5ea : $00
	.db $00                                                  ; $e5eb : $00
	.db $00                                                  ; $e5ec : $00
	.db $00                                                  ; $e5ed : $00
	.db $00                                                  ; $e5ee : $00
	.db $00                                                  ; $e5ef : $00
	.db $00                                                  ; $e5f0 : $00
	.db $00                                                  ; $e5f1 : $00
	.db $00                                                  ; $e5f2 : $00
	.db $00                                                  ; $e5f3 : $00
	.db $00                                                  ; $e5f4 : $00
	.db $00                                                  ; $e5f5 : $00
	.db $00                                                  ; $e5f6 : $00
	.db $00                                                  ; $e5f7 : $00
	.db $00                                                  ; $e5f8 : $00
	.db $00                                                  ; $e5f9 : $00
	.db $00                                                  ; $e5fa : $00
	.db $00                                                  ; $e5fb : $00
	.db $00                                                  ; $e5fc : $00
	.db $00                                                  ; $e5fd : $00
	.db $00                                                  ; $e5fe : $00
	.db $00                                                  ; $e5ff : $00
	sta $9170.w                                                  ; $e600 : $8d, $70, $91

br_4f_e603:
	ply                                                  ; $e603 : $7a
	cpy $cc33.w                                                  ; $e604 : $cc, $33, $cc
	and $ec, S                                                  ; $e607 : $23, $ec
	ora $9b, S                                                  ; $e609 : $03, $9b
	rts                                                  ; $e60b : $60


	sta ($60), Y                                                  ; $e60c : $91, $60
	tsc                                                  ; $e60e : $3b
	cpy #$7e00.w                                                  ; $e60f : $c0, $00, $7e
	bpl br_4f_e690                                                  ; $e612 : $10, $7c

	.db $00                                                  ; $e614 : $00
	sei                                                  ; $e615 : $78
	.db $00                                                  ; $e616 : $00
	bvs br_4f_e619                                                  ; $e617 : $70, $00

br_4f_e619:
	beq br_4f_e61b                                                  ; $e619 : $f0, $00

br_4f_e61b:
	stz $00                                                  ; $e61b : $64, $00
	ror $e700.w                                                  ; $e61d : $6e, $00, $e7
	rol $c1                                                  ; $e620 : $26, $c1
	inc $dc1c.w, X                                                  ; $e622 : $fe, $1c, $dc
	and $67, S                                                  ; $e625 : $23, $67
	sta $c03f.w, X                                                  ; $e627 : $9d, $3f, $c0
	clc                                                  ; $e62a : $18
	sbc $b1, S                                                  ; $e62b : $e3, $b1
	eor $188877.l                                                  ; $e62d : $4f, $77, $88, $18
	stp                                                  ; $e631 : $db
	php                                                  ; $e632 : $08
	cmp $6100.w, X                                                  ; $e633 : $dd, $00, $61
	ora $3d                                                  ; $e636 : $05, $3d
	.db $00                                                  ; $e638 : $00
	asl                                                  ; $e639 : $0a
	.db $00                                                  ; $e63a : $00
	tsb $00                                                  ; $e63b : $04, $00
	.db $00                                                  ; $e63d : $00
	.db $00                                                  ; $e63e : $00
	.db $00                                                  ; $e63f : $00
	rti                                                  ; $e640 : $40


	bra br_4f_e603                                                  ; $e641 : $80, $c0

	.db $00                                                  ; $e643 : $00
	cpx #$c000.w                                                  ; $e644 : $e0, $00, $c0
	jsr $00c0.w                                                  ; $e647 : $20, $c0, $00
	.db $30, $40                                                  ; $e64a : $30, $40

	bvs br_4f_e64e                                                  ; $e64c : $70, $00

br_4f_e64e:
	beq br_4f_e650                                                  ; $e64e : $f0, $00

br_4f_e650:
	.db $00                                                  ; $e650 : $00
	.db $00                                                  ; $e651 : $00
	.db $00                                                  ; $e652 : $00
	bra br_4f_e655                                                  ; $e653 : $80, $00

br_4f_e655:
	rti                                                  ; $e655 : $40


	.db $00                                                  ; $e656 : $00
	jsr $6000.w                                                  ; $e657 : $20, $00, $60
	bra br_4f_e6bc                                                  ; $e65a : $80, $60

	.db $00                                                  ; $e65c : $00
	bne br_4f_e65f                                                  ; $e65d : $d0, $00

br_4f_e65f:
	bra br_4f_e662                                                  ; $e65f : $80, $01

	.db $00                                                  ; $e661 : $00

br_4f_e662:
	ora $00, S                                                  ; $e662 : $03, $00
	.db $00                                                  ; $e664 : $00
	ora $08, S                                                  ; $e665 : $03, $08
	ora $000405.l                                                  ; $e667 : $0f, $05, $04, $00
	.db $00                                                  ; $e66b : $00
	.db $00                                                  ; $e66c : $00
	.db $00                                                  ; $e66d : $00
	.db $00                                                  ; $e66e : $00
	.db $00                                                  ; $e66f : $00
	.db $00                                                  ; $e670 : $00
	.db $00                                                  ; $e671 : $00
	.db $00                                                  ; $e672 : $00
	.db $00                                                  ; $e673 : $00
	.db $00                                                  ; $e674 : $00
	ora $00, S                                                  ; $e675 : $03, $00
	ora [$00]                                                  ; $e677 : $07, $00
	.db $00                                                  ; $e679 : $00
	.db $00                                                  ; $e67a : $00
	.db $00                                                  ; $e67b : $00
	.db $00                                                  ; $e67c : $00
	.db $00                                                  ; $e67d : $00
	.db $00                                                  ; $e67e : $00
	.db $00                                                  ; $e67f : $00
	tdc                                                  ; $e680 : $7b
	bra br_4f_e6f1                                                  ; $e681 : $80, $6e

	sta ($f6, X)                                                  ; $e683 : $81, $f6
	ora ($1b, X)                                                  ; $e685 : $01, $1b
	cpx #$00ff.w                                                  ; $e687 : $e0, $ff, $00
	adc $000f00.l, X                                                  ; $e68a : $7f, $00, $0f, $00
	.db $00                                                  ; $e68e : $00
	.db $00                                                  ; $e68f : $00

br_4f_e690:
	.db $00                                                  ; $e690 : $00
	sbc [$00]                                                  ; $e691 : $e7, $00
	sbc ($00, S), Y                                                  ; $e693 : $f3, $00
	xba                                                  ; $e695 : $eb
	.db $00                                                  ; $e696 : $00
	sbc $00                                                  ; $e697 : $e5, $00
	.db $00                                                  ; $e699 : $00
	.db $00                                                  ; $e69a : $00
	.db $00                                                  ; $e69b : $00

br_4f_e69c:
	.db $00                                                  ; $e69c : $00
	.db $00                                                  ; $e69d : $00
	.db $00                                                  ; $e69e : $00
	.db $00                                                  ; $e69f : $00
	tsx                                                  ; $e6a0 : $ba
	mvp $e0, $33                                                  ; $e6a1 : $44, $33, $e0
	tcs                                                  ; $e6a4 : $1b
	bne br_4f_e6f2                                                  ; $e6a5 : $d0, $4b

	sep #$df.b                                                  ; $e6a7 : $e2, $df
	.db $00                                                  ; $e6a9 : $00
	inc $f000.w, X                                                  ; $e6aa : $fe, $00, $f0
	.db $00                                                  ; $e6ad : $00
	.db $00                                                  ; $e6ae : $00
	.db $00                                                  ; $e6af : $00
	.db $00                                                  ; $e6b0 : $00
	sta $00, S                                                  ; $e6b1 : $83, $00
	cpy $c720.w                                                  ; $e6b3 : $cc, $20, $c7
	bvc br_4f_e69c                                                  ; $e6b6 : $50, $e4

	.db $00                                                  ; $e6b8 : $00
	rts                                                  ; $e6b9 : $60


	.db $00                                                  ; $e6ba : $00
	.db $00                                                  ; $e6bb : $00

br_4f_e6bc:
	.db $00                                                  ; $e6bc : $00
	.db $00                                                  ; $e6bd : $00
	.db $00                                                  ; $e6be : $00
	.db $00                                                  ; $e6bf : $00
	cpx #$00.b                                                  ; $e6c0 : $e0, $00
	cpy #$00.b                                                  ; $e6c2 : $c0, $00
	cpy #$80.b                                                  ; $e6c4 : $c0, $80
	bra br_4f_e6c8                                                  ; $e6c6 : $80, $00

br_4f_e6c8:
	bra br_4f_e6ca                                                  ; $e6c8 : $80, $00

br_4f_e6ca:
	.db $00                                                  ; $e6ca : $00
	.db $00                                                  ; $e6cb : $00
	.db $00                                                  ; $e6cc : $00
	.db $00                                                  ; $e6cd : $00
	.db $00                                                  ; $e6ce : $00
	.db $00                                                  ; $e6cf : $00
	.db $00                                                  ; $e6d0 : $00
	rts                                                  ; $e6d1 : $60


	.db $00                                                  ; $e6d2 : $00
	.db $00                                                  ; $e6d3 : $00
	.db $00                                                  ; $e6d4 : $00
	.db $00                                                  ; $e6d5 : $00
	.db $00                                                  ; $e6d6 : $00
	.db $00                                                  ; $e6d7 : $00
	.db $00                                                  ; $e6d8 : $00
	.db $00                                                  ; $e6d9 : $00
	.db $00                                                  ; $e6da : $00
	.db $00                                                  ; $e6db : $00
	.db $00                                                  ; $e6dc : $00
	.db $00                                                  ; $e6dd : $00
	.db $00                                                  ; $e6de : $00
	.db $00                                                  ; $e6df : $00
	.db $00                                                  ; $e6e0 : $00
	.db $00                                                  ; $e6e1 : $00
	.db $00                                                  ; $e6e2 : $00
	.db $00                                                  ; $e6e3 : $00
	.db $00                                                  ; $e6e4 : $00
	.db $00                                                  ; $e6e5 : $00
	.db $00                                                  ; $e6e6 : $00
	.db $00                                                  ; $e6e7 : $00
	.db $00                                                  ; $e6e8 : $00
	.db $00                                                  ; $e6e9 : $00
	.db $00                                                  ; $e6ea : $00
	.db $00                                                  ; $e6eb : $00
	.db $00                                                  ; $e6ec : $00
	.db $00                                                  ; $e6ed : $00
	.db $00                                                  ; $e6ee : $00
	.db $00                                                  ; $e6ef : $00
	.db $00                                                  ; $e6f0 : $00

br_4f_e6f1:
	.db $00                                                  ; $e6f1 : $00

br_4f_e6f2:
	.db $00                                                  ; $e6f2 : $00
	.db $00                                                  ; $e6f3 : $00
	.db $00                                                  ; $e6f4 : $00
	.db $00                                                  ; $e6f5 : $00
	.db $00                                                  ; $e6f6 : $00
	.db $00                                                  ; $e6f7 : $00
	.db $00                                                  ; $e6f8 : $00
	.db $00                                                  ; $e6f9 : $00
	.db $00                                                  ; $e6fa : $00
	.db $00                                                  ; $e6fb : $00
	.db $00                                                  ; $e6fc : $00
	.db $00                                                  ; $e6fd : $00
	.db $00                                                  ; $e6fe : $00
	.db $00                                                  ; $e6ff : $00
	.db $00                                                  ; $e700 : $00
	.db $00                                                  ; $e701 : $00
	.db $00                                                  ; $e702 : $00
	.db $00                                                  ; $e703 : $00
	.db $00                                                  ; $e704 : $00
	.db $00                                                  ; $e705 : $00
	.db $00                                                  ; $e706 : $00
	.db $00                                                  ; $e707 : $00
	.db $00                                                  ; $e708 : $00
	.db $00                                                  ; $e709 : $00
	.db $00                                                  ; $e70a : $00
	.db $00                                                  ; $e70b : $00
	ora $00, S                                                  ; $e70c : $03, $00
	tsb $0003.w                                                  ; $e70e : $0c, $03, $00
	.db $00                                                  ; $e711 : $00
	.db $00                                                  ; $e712 : $00
	.db $00                                                  ; $e713 : $00
	.db $00                                                  ; $e714 : $00
	.db $00                                                  ; $e715 : $00
	.db $00                                                  ; $e716 : $00
	.db $00                                                  ; $e717 : $00
	.db $00                                                  ; $e718 : $00
	.db $00                                                  ; $e719 : $00
	.db $00                                                  ; $e71a : $00
	.db $00                                                  ; $e71b : $00
	.db $00                                                  ; $e71c : $00
	.db $00                                                  ; $e71d : $00
	.db $00                                                  ; $e71e : $00
	.db $00                                                  ; $e71f : $00
	.db $00                                                  ; $e720 : $00
	.db $00                                                  ; $e721 : $00
	.db $00                                                  ; $e722 : $00
	.db $00                                                  ; $e723 : $00
	.db $00                                                  ; $e724 : $00
	.db $00                                                  ; $e725 : $00
	.db $00                                                  ; $e726 : $00
	.db $00                                                  ; $e727 : $00
	.db $00                                                  ; $e728 : $00
	.db $00                                                  ; $e729 : $00
	.db $00                                                  ; $e72a : $00
	.db $00                                                  ; $e72b : $00
	cpx #$00.b                                                  ; $e72c : $e0, $00
	jsr $00c0.w                                                  ; $e72e : $20, $c0, $00
	.db $00                                                  ; $e731 : $00
	.db $00                                                  ; $e732 : $00
	.db $00                                                  ; $e733 : $00
	.db $00                                                  ; $e734 : $00
	.db $00                                                  ; $e735 : $00
	.db $00                                                  ; $e736 : $00
	.db $00                                                  ; $e737 : $00
	.db $00                                                  ; $e738 : $00
	.db $00                                                  ; $e739 : $00
	.db $00                                                  ; $e73a : $00
	.db $00                                                  ; $e73b : $00
	.db $00                                                  ; $e73c : $00
	.db $00                                                  ; $e73d : $00
	.db $00                                                  ; $e73e : $00
	.db $00                                                  ; $e73f : $00
	php                                                  ; $e740 : $08
	tsb $0e                                                  ; $e741 : $04, $0e
	.db $00                                                  ; $e743 : $00
	trb $0a                                                  ; $e744 : $14, $0a
	ora [$08]                                                  ; $e746 : $07, $08
	asl $09                                                  ; $e748 : $06, $09
	asl $0f01.w                                                  ; $e74a : $0e, $01, $0f
	.db $00                                                  ; $e74d : $00
	ora $000000.l                                                  ; $e74e : $0f, $00, $00, $00
	.db $00                                                  ; $e752 : $00
	.db $00                                                  ; $e753 : $00

br_4f_e754:
	.db $00                                                  ; $e754 : $00
	.db $00                                                  ; $e755 : $00
	.db $00                                                  ; $e756 : $00
	.db $00                                                  ; $e757 : $00
	.db $00                                                  ; $e758 : $00
	.db $00                                                  ; $e759 : $00
	.db $00                                                  ; $e75a : $00
	.db $00                                                  ; $e75b : $00

br_4f_e75c:
	.db $00                                                  ; $e75c : $00
	.db $00                                                  ; $e75d : $00
	.db $00                                                  ; $e75e : $00
	.db $00                                                  ; $e75f : $00
	.db $00                                                  ; $e760 : $00
	.db $00                                                  ; $e761 : $00
	.db $00                                                  ; $e762 : $00
	.db $00                                                  ; $e763 : $00
	ora ($00, X)                                                  ; $e764 : $01, $00
	ora $00, S                                                  ; $e766 : $03, $00
	ora $02                                                  ; $e768 : $05, $02
	cop $05.b                                                  ; $e76a : $02, $05
	asl $01                                                  ; $e76c : $06, $01
	ora $000000.l                                                  ; $e76e : $0f, $00, $00, $00
	.db $00                                                  ; $e772 : $00
	.db $00                                                  ; $e773 : $00
	.db $00                                                  ; $e774 : $00
	.db $00                                                  ; $e775 : $00
	.db $00                                                  ; $e776 : $00
	.db $00                                                  ; $e777 : $00
	.db $00                                                  ; $e778 : $00
	.db $00                                                  ; $e779 : $00
	.db $00                                                  ; $e77a : $00
	.db $00                                                  ; $e77b : $00
	.db $00                                                  ; $e77c : $00
	.db $00                                                  ; $e77d : $00
	.db $00                                                  ; $e77e : $00
	.db $00                                                  ; $e77f : $00
	and [$18]                                                  ; $e780 : $27, $18
	ldy $ff43.w, X                                                  ; $e782 : $bc, $43, $ff
	.db $00                                                  ; $e785 : $00
	lda $807f40.l, X                                                  ; $e786 : $bf, $40, $7f, $80

br_4f_e78a:
	sbc $03fc00.l, X                                                  ; $e78a : $ff, $00, $fc, $03
	inc $0001.w, X                                                  ; $e78e : $fe, $01, $00
	.db $00                                                  ; $e791 : $00
	.db $00                                                  ; $e792 : $00
	.db $00                                                  ; $e793 : $00
	.db $00                                                  ; $e794 : $00
	.db $00                                                  ; $e795 : $00
	.db $00                                                  ; $e796 : $00
	.db $00                                                  ; $e797 : $00
	.db $00                                                  ; $e798 : $00
	.db $00                                                  ; $e799 : $00
	.db $00                                                  ; $e79a : $00
	.db $00                                                  ; $e79b : $00
	.db $00                                                  ; $e79c : $00
	.db $00                                                  ; $e79d : $00
	.db $00                                                  ; $e79e : $00
	.db $00                                                  ; $e79f : $00
	cpx #$00.b                                                  ; $e7a0 : $e0, $00
	beq br_4f_e7a4                                                  ; $e7a2 : $f0, $00

br_4f_e7a4:
	beq br_4f_e7a6                                                  ; $e7a4 : $f0, $00

br_4f_e7a6:
	beq br_4f_e7a8                                                  ; $e7a6 : $f0, $00

br_4f_e7a8:
	beq br_4f_e7aa                                                  ; $e7a8 : $f0, $00

br_4f_e7aa:
	inx                                                  ; $e7aa : $e8
	.db $10, $f8                                                  ; $e7ab : $10, $f8

	bpl br_4f_e754                                                  ; $e7ad : $10, $a5

	cmp #$00.b                                                  ; $e7af : $c9, $00
	.db $00                                                  ; $e7b1 : $00
	.db $00                                                  ; $e7b2 : $00
	.db $00                                                  ; $e7b3 : $00
	.db $00                                                  ; $e7b4 : $00
	.db $00                                                  ; $e7b5 : $00
	.db $00                                                  ; $e7b6 : $00
	.db $00                                                  ; $e7b7 : $00
	.db $00                                                  ; $e7b8 : $00
	.db $00                                                  ; $e7b9 : $00
	.db $00                                                  ; $e7ba : $00
	.db $00                                                  ; $e7bb : $00
	.db $00                                                  ; $e7bc : $00
	.db $00                                                  ; $e7bd : $00
	.db $10, $01                                                  ; $e7be : $10, $01

	asl $0e00.w                                                  ; $e7c0 : $0e, $00, $0e
	.db $00                                                  ; $e7c3 : $00
	asl                                                  ; $e7c4 : $0a
	tsb $0a                                                  ; $e7c5 : $04, $0a
	tsb $0a                                                  ; $e7c7 : $04, $0a
	tsb $0a                                                  ; $e7c9 : $04, $0a
	tsb $0c0e.w                                                  ; $e7cb : $0c, $0e, $0c
	asl $0e                                                  ; $e7ce : $06, $0e
	.db $00                                                  ; $e7d0 : $00
	.db $00                                                  ; $e7d1 : $00
	.db $00                                                  ; $e7d2 : $00
	.db $00                                                  ; $e7d3 : $00
	.db $00                                                  ; $e7d4 : $00
	.db $00                                                  ; $e7d5 : $00
	.db $00                                                  ; $e7d6 : $00
	.db $00                                                  ; $e7d7 : $00
	.db $00                                                  ; $e7d8 : $00
	.db $00                                                  ; $e7d9 : $00
	.db $00                                                  ; $e7da : $00
	php                                                  ; $e7db : $08
	.db $00                                                  ; $e7dc : $00
	tsb $0600.w                                                  ; $e7dd : $0c, $00, $06
	phd                                                  ; $e7e0 : $0b
	tsb $0b                                                  ; $e7e1 : $04, $0b
	tsb $1b                                                  ; $e7e3 : $04, $1b
	tsb $17                                                  ; $e7e5 : $04, $17
	php                                                  ; $e7e7 : $08
	ora [$08], Y                                                  ; $e7e8 : $17, $08
	ora [$08], Y                                                  ; $e7ea : $17, $08
	asl $08, X                                                  ; $e7ec : $16, $08
	clc                                                  ; $e7ee : $18
	.db $00                                                  ; $e7ef : $00
	.db $00                                                  ; $e7f0 : $00
	.db $00                                                  ; $e7f1 : $00
	.db $00                                                  ; $e7f2 : $00
	.db $00                                                  ; $e7f3 : $00
	.db $00                                                  ; $e7f4 : $00
	.db $00                                                  ; $e7f5 : $00
	.db $00                                                  ; $e7f6 : $00
	.db $00                                                  ; $e7f7 : $00

br_4f_e7f8:
	.db $00                                                  ; $e7f8 : $00
	.db $00                                                  ; $e7f9 : $00
	.db $00                                                  ; $e7fa : $00
	.db $00                                                  ; $e7fb : $00
	.db $00                                                  ; $e7fc : $00
	.db $00                                                  ; $e7fd : $00
	.db $00                                                  ; $e7fe : $00
	.db $00                                                  ; $e7ff : $00
	inc $ff01.w, X                                                  ; $e800 : $fe, $01, $ff
	.db $00                                                  ; $e803 : $00
	sbc $1ee600.l, X                                                  ; $e804 : $ff, $00, $e6, $1e
	jsr ($c303.w, X)                                                  ; $e808 : $fc, $03, $c3
	.db $00                                                  ; $e80b : $00
	ora ($03, X)                                                  ; $e80c : $01, $03
	ora $07, S                                                  ; $e80e : $03, $07
	.db $00                                                  ; $e810 : $00
	.db $00                                                  ; $e811 : $00
	.db $00                                                  ; $e812 : $00
	.db $00                                                  ; $e813 : $00
	.db $00                                                  ; $e814 : $00
	.db $00                                                  ; $e815 : $00
	ora ($00, X)                                                  ; $e816 : $01, $00
	.db $00                                                  ; $e818 : $00
	.db $00                                                  ; $e819 : $00
	.db $00                                                  ; $e81a : $00
	.db $00                                                  ; $e81b : $00
	.db $00                                                  ; $e81c : $00
	.db $00                                                  ; $e81d : $00
	.db $00                                                  ; $e81e : $00
	.db $00                                                  ; $e81f : $00
	sta $52a9.w                                                  ; $e820 : $8d, $a9, $52
	pei ($2e)                                                  ; $e823 : $d4, $2e
	cpx $6260.w                                                  ; $e825 : $ec, $60, $62
	cmp $c2, S                                                  ; $e828 : $c3, $c2
	lda ($61, X)                                                  ; $e82a : $a1, $61
	.db $62, $13, $13                                                  ; $e82c : $62, $13, $13

	tsb $0150.w                                                  ; $e82f : $0c, $50, $01
	plp                                                  ; $e832 : $28
	.db $00                                                  ; $e833 : $00
	bpl br_4f_e836                                                  ; $e834 : $10, $00

br_4f_e836:
	stz $3c00.w                                                  ; $e836 : $9c, $00, $3c
	php                                                  ; $e839 : $08
	asl $0c14.w, X                                                  ; $e83a : $1e, $14, $0c
	.db $00                                                  ; $e83d : $00
	.db $00                                                  ; $e83e : $00
	and ($0d, X)                                                  ; $e83f : $21, $0d
	ora $8a8e.w                                                  ; $e841 : $0d, $8e, $8a
	ldx $4fae.w                                                  ; $e844 : $ae, $ae, $4f
	eor ($db, X)                                                  ; $e847 : $41, $db
	sta $bf71.w, X                                                  ; $e849 : $9d, $71, $bf
	sbc $683f.w, Y                                                  ; $e84c : $f9, $3f, $68
	ora $418782.l                                                  ; $e84f : $0f, $82, $87, $41
	cmp $41, S                                                  ; $e853 : $c3, $41
	sbc $20, S                                                  ; $e855 : $e3, $20
	adc ($20), Y                                                  ; $e857 : $71, $20
	and $10, X                                                  ; $e859 : $35, $10
	and [$10], Y                                                  ; $e85b : $37, $10
	tsc                                                  ; $e85d : $3b
	bpl br_4f_e7f8                                                  ; $e85e : $10, $98

	bpl br_4f_e862                                                  ; $e860 : $10, $00

br_4f_e862:
	bpl br_4f_e864                                                  ; $e862 : $10, $00

br_4f_e864:
	.db $00                                                  ; $e864 : $00
	.db $00                                                  ; $e865 : $00
	.db $00                                                  ; $e866 : $00
	.db $00                                                  ; $e867 : $00
	.db $00                                                  ; $e868 : $00
	.db $00                                                  ; $e869 : $00
	.db $00                                                  ; $e86a : $00
	.db $00                                                  ; $e86b : $00
	.db $00                                                  ; $e86c : $00
	.db $00                                                  ; $e86d : $00
	.db $00                                                  ; $e86e : $00
	.db $00                                                  ; $e86f : $00
	.db $00                                                  ; $e870 : $00
	.db $00                                                  ; $e871 : $00
	.db $00                                                  ; $e872 : $00
	.db $00                                                  ; $e873 : $00
	.db $00                                                  ; $e874 : $00
	.db $00                                                  ; $e875 : $00
	.db $00                                                  ; $e876 : $00
	.db $00                                                  ; $e877 : $00
	.db $00                                                  ; $e878 : $00
	.db $00                                                  ; $e879 : $00
	.db $00                                                  ; $e87a : $00
	.db $00                                                  ; $e87b : $00
	.db $00                                                  ; $e87c : $00
	.db $00                                                  ; $e87d : $00
	.db $00                                                  ; $e87e : $00
	.db $00                                                  ; $e87f : $00
	asl $02                                                  ; $e880 : $06, $02
	tsb $02                                                  ; $e882 : $04, $02
	ora ($03, X)                                                  ; $e884 : $01, $03
	.db $00                                                  ; $e886 : $00
	ora $02, S                                                  ; $e887 : $03, $02
	ora ($00, X)                                                  ; $e889 : $01, $00
	.db $00                                                  ; $e88b : $00
	.db $00                                                  ; $e88c : $00
	.db $00                                                  ; $e88d : $00
	.db $00                                                  ; $e88e : $00
	.db $00                                                  ; $e88f : $00
	ora ($00, X)                                                  ; $e890 : $01, $00
	ora ($00, X)                                                  ; $e892 : $01, $00
	.db $00                                                  ; $e894 : $00
	.db $00                                                  ; $e895 : $00
	.db $00                                                  ; $e896 : $00
	.db $00                                                  ; $e897 : $00
	.db $00                                                  ; $e898 : $00
	.db $00                                                  ; $e899 : $00
	.db $00                                                  ; $e89a : $00
	.db $00                                                  ; $e89b : $00
	.db $00                                                  ; $e89c : $00
	.db $00                                                  ; $e89d : $00
	.db $00                                                  ; $e89e : $00
	.db $00                                                  ; $e89f : $00
	sta $3386.w, Y                                                  ; $e8a0 : $99, $86, $33
	tsb $1c23.w                                                  ; $e8a3 : $0c, $23, $1c
	stz $08, X                                                  ; $e8a6 : $74, $08
	.db $62                                                  ; $e8a8 : $62

	trb $1c63.w                                                  ; $e8a9 : $1c, $63, $1c
	lda ($1c, X)                                                  ; $e8ac : $a1, $1c
	sta ($0c), Y                                                  ; $e8ae : $91, $0c
	.db $00                                                  ; $e8b0 : $00
	adc $00ff00.l                                                  ; $e8b1 : $6f, $00, $ff, $00
	sbc $00bf00.l, X                                                  ; $e8b5 : $ff, $00, $bf, $00
	lda $00be00.l, X                                                  ; $e8b9 : $bf, $00, $be, $00
	ror $7e00.w, X                                                  ; $e8bd : $7e, $00, $7e
	sei                                                  ; $e8c0 : $78
	ora [$60], Y                                                  ; $e8c1 : $17, $60
	ora $cc1f5e.l, X                                                  ; $e8c3 : $1f, $5e, $1f, $cc
	and ($93, S), Y                                                  ; $e8c7 : $33, $93
	rts                                                  ; $e8c9 : $60


	sbc $916e0e.l, X                                                  ; $e8ca : $ff, $0e, $6e, $91
	and ($ce), Y                                                  ; $e8ce : $31, $ce

br_4f_e8d0:
	.db $00                                                  ; $e8d0 : $00
	beq br_4f_e8d3                                                  ; $e8d1 : $f0, $00

br_4f_e8d3:
	jsr ($ff1e.w, X)                                                  ; $e8d3 : $fc, $1e, $ff
	.db $00                                                  ; $e8d6 : $00
	adc $0c, S                                                  ; $e8d7 : $63, $0c
	adc $6e04.w                                                  ; $e8d9 : $6d, $04, $6e
	.db $00                                                  ; $e8dc : $00
	bmi br_4f_e8df                                                  ; $e8dd : $30, $00

br_4f_e8df:
	asl $0000.w, X                                                  ; $e8df : $1e, $00, $00
	.db $00                                                  ; $e8e2 : $00
	.db $00                                                  ; $e8e3 : $00
	.db $00                                                  ; $e8e4 : $00
	.db $00                                                  ; $e8e5 : $00
	.db $00                                                  ; $e8e6 : $00
	.db $00                                                  ; $e8e7 : $00
	.db $00                                                  ; $e8e8 : $00
	.db $00                                                  ; $e8e9 : $00
	.db $00                                                  ; $e8ea : $00
	.db $00                                                  ; $e8eb : $00
	.db $00                                                  ; $e8ec : $00
	.db $00                                                  ; $e8ed : $00
	.db $00                                                  ; $e8ee : $00
	.db $00                                                  ; $e8ef : $00
	.db $00                                                  ; $e8f0 : $00
	.db $00                                                  ; $e8f1 : $00
	.db $00                                                  ; $e8f2 : $00
	.db $00                                                  ; $e8f3 : $00
	.db $00                                                  ; $e8f4 : $00
	.db $00                                                  ; $e8f5 : $00
	.db $00                                                  ; $e8f6 : $00
	.db $00                                                  ; $e8f7 : $00
	.db $00                                                  ; $e8f8 : $00
	.db $00                                                  ; $e8f9 : $00
	.db $00                                                  ; $e8fa : $00
	.db $00                                                  ; $e8fb : $00
	.db $00                                                  ; $e8fc : $00
	.db $00                                                  ; $e8fd : $00
	.db $00                                                  ; $e8fe : $00
	.db $00                                                  ; $e8ff : $00
	.db $00                                                  ; $e900 : $00
	.db $00                                                  ; $e901 : $00
	.db $00                                                  ; $e902 : $00
	.db $00                                                  ; $e903 : $00
	tsb $04                                                  ; $e904 : $04, $04
	tsb $00                                                  ; $e906 : $04, $00
	cop $02.b                                                  ; $e908 : $02, $02
	ora $01, S                                                  ; $e90a : $03, $01
	ora ($01, X)                                                  ; $e90c : $01, $01
	.db $00                                                  ; $e90e : $00
	.db $00                                                  ; $e90f : $00
	.db $00                                                  ; $e910 : $00
	.db $00                                                  ; $e911 : $00
	.db $00                                                  ; $e912 : $00
	.db $00                                                  ; $e913 : $00
	.db $00                                                  ; $e914 : $00
	tsb $02                                                  ; $e915 : $04, $02
	cop $01.b                                                  ; $e917 : $02, $01
	ora $00, S                                                  ; $e919 : $03, $00
	ora ($00, X)                                                  ; $e91b : $01, $00
	ora ($00, X)                                                  ; $e91d : $01, $00
	.db $00                                                  ; $e91f : $00
	.db $00                                                  ; $e920 : $00
	.db $00                                                  ; $e921 : $00
	.db $00                                                  ; $e922 : $00
	.db $00                                                  ; $e923 : $00
	clc                                                  ; $e924 : $18
	php                                                  ; $e925 : $08
	tsb $080c.w                                                  ; $e926 : $0c, $0c, $08
	.db $00                                                  ; $e929 : $00
	tsb $04                                                  ; $e92a : $04, $04
	eor $45                                                  ; $e92c : $45, $45
	lda ($a3, S), Y                                                  ; $e92e : $b3, $a3
	.db $00                                                  ; $e930 : $00
	.db $00                                                  ; $e931 : $00
	.db $00                                                  ; $e932 : $00
	.db $00                                                  ; $e933 : $00
	.db $00                                                  ; $e934 : $00
	php                                                  ; $e935 : $08
	.db $00                                                  ; $e936 : $00
	tsb $0404.w                                                  ; $e937 : $0c, $04, $04
	.db $82                                                  ; $e93a : $82

	stx $82                                                  ; $e93b : $86, $82
	cmp [$41]                                                  ; $e93d : $c7, $41
	cmp $00, S                                                  ; $e93f : $c3, $00
	.db $00                                                  ; $e941 : $00
	.db $00                                                  ; $e942 : $00
	.db $00                                                  ; $e943 : $00

br_4f_e944:
	.db $00                                                  ; $e944 : $00
	.db $00                                                  ; $e945 : $00

br_4f_e946:
	.db $00                                                  ; $e946 : $00
	.db $00                                                  ; $e947 : $00

br_4f_e948:
	.db $00                                                  ; $e948 : $00
	.db $00                                                  ; $e949 : $00
	.db $00                                                  ; $e94a : $00
	.db $00                                                  ; $e94b : $00
	.db $00                                                  ; $e94c : $00
	.db $00                                                  ; $e94d : $00
	bra br_4f_e8d0                                                  ; $e94e : $80, $80

	.db $00                                                  ; $e950 : $00

br_4f_e951:
	.db $00                                                  ; $e951 : $00
	.db $00                                                  ; $e952 : $00

br_4f_e953:
	.db $00                                                  ; $e953 : $00
	.db $00                                                  ; $e954 : $00

br_4f_e955:
	.db $00                                                  ; $e955 : $00
	.db $00                                                  ; $e956 : $00
	.db $00                                                  ; $e957 : $00
	.db $00                                                  ; $e958 : $00
	.db $00                                                  ; $e959 : $00
	.db $00                                                  ; $e95a : $00
	.db $00                                                  ; $e95b : $00
	.db $00                                                  ; $e95c : $00
	.db $00                                                  ; $e95d : $00
	.db $00                                                  ; $e95e : $00
	bra br_4f_e961                                                  ; $e95f : $80, $00

br_4f_e961:
	.db $00                                                  ; $e961 : $00
	.db $00                                                  ; $e962 : $00
	.db $00                                                  ; $e963 : $00
	.db $00                                                  ; $e964 : $00
	.db $00                                                  ; $e965 : $00
	.db $00                                                  ; $e966 : $00
	.db $00                                                  ; $e967 : $00
	cop $03.b                                                  ; $e968 : $02, $03
	ora $06                                                  ; $e96a : $05, $06
	.db $00                                                  ; $e96c : $00
	tsb $5854.w                                                  ; $e96d : $0c, $54, $58
	.db $00                                                  ; $e970 : $00
	.db $00                                                  ; $e971 : $00
	.db $00                                                  ; $e972 : $00
	.db $00                                                  ; $e973 : $00
	.db $00                                                  ; $e974 : $00
	.db $00                                                  ; $e975 : $00
	.db $00                                                  ; $e976 : $00
	.db $00                                                  ; $e977 : $00
	tsb $00                                                  ; $e978 : $04, $00
	clc                                                  ; $e97a : $18
	.db $00                                                  ; $e97b : $00
	bmi br_4f_e97e                                                  ; $e97c : $30, $00

br_4f_e97e:
	jsr $0100.w                                                  ; $e97e : $20, $00, $01
	ora $04, S                                                  ; $e981 : $03, $04
	ora $14, S                                                  ; $e983 : $03, $14
	php                                                  ; $e985 : $08
	ora ($00, S), Y                                                  ; $e986 : $13, $00
	cli                                                  ; $e988 : $58
	stx $00                                                  ; $e989 : $86, $00
	asl $1028.w, X                                                  ; $e98b : $1e, $28, $10
	eor $0020.w, X                                                  ; $e98e : $5d, $20, $00
	.db $00                                                  ; $e991 : $00
	.db $00                                                  ; $e992 : $00
	.db $00                                                  ; $e993 : $00
	.db $00                                                  ; $e994 : $00
	ora $00, S                                                  ; $e995 : $03, $00
	ora $001f00.l                                                  ; $e997 : $0f, $00, $1f, $00
	and $007f00.l, X                                                  ; $e99b : $3f, $00, $7f, $00
	rol $30aa.w, X                                                  ; $e99f : $3e, $aa, $30
	sbc $79, S                                                  ; $e9a2 : $e3, $79
	sbc ($7d, S), Y                                                  ; $e9a4 : $f3, $7d
	cmp ($1e), Y                                                  ; $e9a6 : $d1, $1e
	beq br_4f_e9d9                                                  ; $e9a8 : $f0, $2f

	cpy #$3f.b                                                  ; $e9aa : $c0, $3f
	ldy $983f.w, X                                                  ; $e9ac : $bc, $3f, $98
	adc [$41]                                                  ; $e9af : $67, $41
	adc ($20, X)                                                  ; $e9b1 : $61, $20
	adc #$20.b                                                  ; $e9b3 : $69, $20
	adc ($20, S), Y                                                  ; $e9b5 : $73, $20
	bmi br_4f_e9b9                                                  ; $e9b7 : $30, $00

br_4f_e9b9:
	cpx #$00.b                                                  ; $e9b9 : $e0, $00
	sed                                                  ; $e9bb : $f8
	bit $00fe.w, X                                                  ; $e9bc : $3c, $fe, $00
	cmp [$00]                                                  ; $e9bf : $c7, $00
	.db $00                                                  ; $e9c1 : $00
	bra br_4f_e944                                                  ; $e9c2 : $80, $80

	bra br_4f_e946                                                  ; $e9c4 : $80, $80

	bra br_4f_e948                                                  ; $e9c6 : $80, $80

	bra br_4f_e9ca                                                  ; $e9c8 : $80, $00

br_4f_e9ca:
	.db $00                                                  ; $e9ca : $00
	cpy #$40.b                                                  ; $e9cb : $c0, $40
	bra br_4f_ea0f                                                  ; $e9cd : $80, $40

	bra br_4f_e951                                                  ; $e9cf : $80, $80

	bra br_4f_e953                                                  ; $e9d1 : $80, $80

	bra br_4f_e955                                                  ; $e9d3 : $80, $80

	bra br_4f_e9d7                                                  ; $e9d5 : $80, $00

br_4f_e9d7:
	bra br_4f_e9d9                                                  ; $e9d7 : $80, $00

br_4f_e9d9:
	.db $00                                                  ; $e9d9 : $00
	.db $00                                                  ; $e9da : $00
	cpy #$00.b                                                  ; $e9db : $c0, $00
	rti                                                  ; $e9dd : $40


	.db $00                                                  ; $e9de : $00
	.db $00                                                  ; $e9df : $00
	pla                                                  ; $e9e0 : $68
	.db $70, $78                                                  ; $e9e1 : $70, $78

	bvs br_4f_ea15                                                  ; $e9e3 : $70, $30

	adc $7f1c.w, X                                                  ; $e9e5 : $7d, $1c, $7f
	rti                                                  ; $e9e8 : $40


	and $111f20.l, X                                                  ; $e9e9 : $3f, $20, $1f, $11
	asl $000e.w                                                  ; $e9ed : $0e, $0e, $00
	.db $00                                                  ; $e9f0 : $00
	.db $00                                                  ; $e9f1 : $00
	.db $00                                                  ; $e9f2 : $00
	.db $00                                                  ; $e9f3 : $00
	.db $00                                                  ; $e9f4 : $00
	.db $00                                                  ; $e9f5 : $00
	.db $00                                                  ; $e9f6 : $00
	.db $00                                                  ; $e9f7 : $00
	.db $00                                                  ; $e9f8 : $00
	.db $00                                                  ; $e9f9 : $00
	.db $00                                                  ; $e9fa : $00
	.db $00                                                  ; $e9fb : $00
	.db $00                                                  ; $e9fc : $00
	.db $00                                                  ; $e9fd : $00
	.db $00                                                  ; $e9fe : $00
	.db $00                                                  ; $e9ff : $00
	sta $9170.w                                                  ; $ea00 : $8d, $70, $91

br_4f_ea03:
	ply                                                  ; $ea03 : $7a
	cpy $cc33.w                                                  ; $ea04 : $cc, $33, $cc
	and $ec, S                                                  ; $ea07 : $23, $ec
	ora $9b, S                                                  ; $ea09 : $03, $9b
	rts                                                  ; $ea0b : $60


	sta ($60), Y                                                  ; $ea0c : $91, $60
	tsc                                                  ; $ea0e : $3b

br_4f_ea0f:
	cpy #$00.b                                                  ; $ea0f : $c0, $00
	ror $7c10.w, X                                                  ; $ea11 : $7e, $10, $7c
	.db $00                                                  ; $ea14 : $00

br_4f_ea15:
	sei                                                  ; $ea15 : $78
	.db $00                                                  ; $ea16 : $00
	bvs br_4f_ea19                                                  ; $ea17 : $70, $00

br_4f_ea19:
	beq br_4f_ea1b                                                  ; $ea19 : $f0, $00

br_4f_ea1b:
	stz $00                                                  ; $ea1b : $64, $00
	ror $e700.w                                                  ; $ea1d : $6e, $00, $e7
	rol $c1                                                  ; $ea20 : $26, $c1
	inc $dc1c.w, X                                                  ; $ea22 : $fe, $1c, $dc
	and $67, S                                                  ; $ea25 : $23, $67
	sta $c03f.w, X                                                  ; $ea27 : $9d, $3f, $c0
	clc                                                  ; $ea2a : $18
	sbc $b1, S                                                  ; $ea2b : $e3, $b1
	eor $188877.l                                                  ; $ea2d : $4f, $77, $88, $18
	stp                                                  ; $ea31 : $db
	php                                                  ; $ea32 : $08
	cmp $6100.w, X                                                  ; $ea33 : $dd, $00, $61
	ora $3d                                                  ; $ea36 : $05, $3d
	.db $00                                                  ; $ea38 : $00
	asl                                                  ; $ea39 : $0a
	.db $00                                                  ; $ea3a : $00
	tsb $00                                                  ; $ea3b : $04, $00
	.db $00                                                  ; $ea3d : $00
	.db $00                                                  ; $ea3e : $00
	.db $00                                                  ; $ea3f : $00
	rti                                                  ; $ea40 : $40


	bra br_4f_ea03                                                  ; $ea41 : $80, $c0

	.db $00                                                  ; $ea43 : $00
	cpx #$00.b                                                  ; $ea44 : $e0, $00
	cpy #$20.b                                                  ; $ea46 : $c0, $20
	cpy #$00.b                                                  ; $ea48 : $c0, $00
	.db $30, $40                                                  ; $ea4a : $30, $40

	bvs br_4f_ea4e                                                  ; $ea4c : $70, $00

br_4f_ea4e:
	beq br_4f_ea50                                                  ; $ea4e : $f0, $00

br_4f_ea50:
	.db $00                                                  ; $ea50 : $00
	.db $00                                                  ; $ea51 : $00
	.db $00                                                  ; $ea52 : $00
	bra br_4f_ea55                                                  ; $ea53 : $80, $00

br_4f_ea55:
	rti                                                  ; $ea55 : $40


	.db $00                                                  ; $ea56 : $00
	jsr $6000.w                                                  ; $ea57 : $20, $00, $60
	bra br_4f_eabc                                                  ; $ea5a : $80, $60

	.db $00                                                  ; $ea5c : $00
	bne br_4f_ea5f                                                  ; $ea5d : $d0, $00

br_4f_ea5f:
	bra br_4f_ea62                                                  ; $ea5f : $80, $01

	.db $00                                                  ; $ea61 : $00

br_4f_ea62:
	ora $00, S                                                  ; $ea62 : $03, $00
	.db $00                                                  ; $ea64 : $00
	ora $08, S                                                  ; $ea65 : $03, $08
	ora $000405.l                                                  ; $ea67 : $0f, $05, $04, $00
	.db $00                                                  ; $ea6b : $00
	.db $00                                                  ; $ea6c : $00
	.db $00                                                  ; $ea6d : $00
	.db $00                                                  ; $ea6e : $00
	.db $00                                                  ; $ea6f : $00
	.db $00                                                  ; $ea70 : $00
	.db $00                                                  ; $ea71 : $00
	.db $00                                                  ; $ea72 : $00
	.db $00                                                  ; $ea73 : $00
	.db $00                                                  ; $ea74 : $00
	ora $00, S                                                  ; $ea75 : $03, $00
	ora [$00]                                                  ; $ea77 : $07, $00
	.db $00                                                  ; $ea79 : $00
	.db $00                                                  ; $ea7a : $00
	.db $00                                                  ; $ea7b : $00
	.db $00                                                  ; $ea7c : $00
	.db $00                                                  ; $ea7d : $00
	.db $00                                                  ; $ea7e : $00
	.db $00                                                  ; $ea7f : $00
	tdc                                                  ; $ea80 : $7b
	bra br_4f_eaf1                                                  ; $ea81 : $80, $6e

	sta ($f6, X)                                                  ; $ea83 : $81, $f6
	ora ($1b, X)                                                  ; $ea85 : $01, $1b
	cpx #$ff.b                                                  ; $ea87 : $e0, $ff
	.db $00                                                  ; $ea89 : $00
	adc $000f00.l, X                                                  ; $ea8a : $7f, $00, $0f, $00
	.db $00                                                  ; $ea8e : $00
	.db $00                                                  ; $ea8f : $00
	.db $00                                                  ; $ea90 : $00
	sbc [$00]                                                  ; $ea91 : $e7, $00
	sbc ($00, S), Y                                                  ; $ea93 : $f3, $00
	xba                                                  ; $ea95 : $eb
	.db $00                                                  ; $ea96 : $00
	sbc $00                                                  ; $ea97 : $e5, $00
	.db $00                                                  ; $ea99 : $00
	.db $00                                                  ; $ea9a : $00
	.db $00                                                  ; $ea9b : $00

br_4f_ea9c:
	.db $00                                                  ; $ea9c : $00
	.db $00                                                  ; $ea9d : $00
	.db $00                                                  ; $ea9e : $00
	.db $00                                                  ; $ea9f : $00
	tsx                                                  ; $eaa0 : $ba
	mvp $e0, $33                                                  ; $eaa1 : $44, $33, $e0
	tcs                                                  ; $eaa4 : $1b
	bne br_4f_eaf2                                                  ; $eaa5 : $d0, $4b

	sep #$df.b                                                  ; $eaa7 : $e2, $df
	.db $00                                                  ; $eaa9 : $00
	inc $f000.w, X                                                  ; $eaaa : $fe, $00, $f0
	.db $00                                                  ; $eaad : $00
	.db $00                                                  ; $eaae : $00
	.db $00                                                  ; $eaaf : $00
	.db $00                                                  ; $eab0 : $00
	sta $00, S                                                  ; $eab1 : $83, $00
	cpy $c720.w                                                  ; $eab3 : $cc, $20, $c7
	bvc br_4f_ea9c                                                  ; $eab6 : $50, $e4

	.db $00                                                  ; $eab8 : $00
	rts                                                  ; $eab9 : $60


	.db $00                                                  ; $eaba : $00
	.db $00                                                  ; $eabb : $00

br_4f_eabc:
	.db $00                                                  ; $eabc : $00
	.db $00                                                  ; $eabd : $00
	.db $00                                                  ; $eabe : $00
	.db $00                                                  ; $eabf : $00
	cpx #$00.b                                                  ; $eac0 : $e0, $00
	cpy #$00.b                                                  ; $eac2 : $c0, $00
	cpy #$80.b                                                  ; $eac4 : $c0, $80
	bra br_4f_eac8                                                  ; $eac6 : $80, $00

br_4f_eac8:
	bra br_4f_eaca                                                  ; $eac8 : $80, $00

br_4f_eaca:
	.db $00                                                  ; $eaca : $00
	.db $00                                                  ; $eacb : $00
	.db $00                                                  ; $eacc : $00
	.db $00                                                  ; $eacd : $00
	.db $00                                                  ; $eace : $00
	.db $00                                                  ; $eacf : $00

br_4f_ead0:
	.db $00                                                  ; $ead0 : $00
	rts                                                  ; $ead1 : $60


	.db $00                                                  ; $ead2 : $00
	.db $00                                                  ; $ead3 : $00
	.db $00                                                  ; $ead4 : $00
	.db $00                                                  ; $ead5 : $00
	.db $00                                                  ; $ead6 : $00
	.db $00                                                  ; $ead7 : $00
	.db $00                                                  ; $ead8 : $00
	.db $00                                                  ; $ead9 : $00
	.db $00                                                  ; $eada : $00
	.db $00                                                  ; $eadb : $00
	.db $00                                                  ; $eadc : $00
	.db $00                                                  ; $eadd : $00
	.db $00                                                  ; $eade : $00
	.db $00                                                  ; $eadf : $00
	.db $00                                                  ; $eae0 : $00
	.db $00                                                  ; $eae1 : $00
	.db $00                                                  ; $eae2 : $00
	.db $00                                                  ; $eae3 : $00
	.db $00                                                  ; $eae4 : $00
	.db $00                                                  ; $eae5 : $00
	.db $00                                                  ; $eae6 : $00
	.db $00                                                  ; $eae7 : $00
	.db $00                                                  ; $eae8 : $00
	.db $00                                                  ; $eae9 : $00
	.db $00                                                  ; $eaea : $00
	.db $00                                                  ; $eaeb : $00
	.db $00                                                  ; $eaec : $00
	.db $00                                                  ; $eaed : $00
	.db $00                                                  ; $eaee : $00
	.db $00                                                  ; $eaef : $00
	.db $00                                                  ; $eaf0 : $00

br_4f_eaf1:
	.db $00                                                  ; $eaf1 : $00

br_4f_eaf2:
	.db $00                                                  ; $eaf2 : $00
	.db $00                                                  ; $eaf3 : $00
	.db $00                                                  ; $eaf4 : $00
	.db $00                                                  ; $eaf5 : $00
	.db $00                                                  ; $eaf6 : $00
	.db $00                                                  ; $eaf7 : $00
	.db $00                                                  ; $eaf8 : $00
	.db $00                                                  ; $eaf9 : $00
	.db $00                                                  ; $eafa : $00
	.db $00                                                  ; $eafb : $00
	.db $00                                                  ; $eafc : $00
	.db $00                                                  ; $eafd : $00
	.db $00                                                  ; $eafe : $00
	.db $00                                                  ; $eaff : $00
	.db $00                                                  ; $eb00 : $00
	.db $00                                                  ; $eb01 : $00
	.db $00                                                  ; $eb02 : $00
	.db $00                                                  ; $eb03 : $00
	tsb $04                                                  ; $eb04 : $04, $04
	tsb $00                                                  ; $eb06 : $04, $00
	cop $02.b                                                  ; $eb08 : $02, $02
	ora $01, S                                                  ; $eb0a : $03, $01
	ora ($01, X)                                                  ; $eb0c : $01, $01
	.db $00                                                  ; $eb0e : $00
	.db $00                                                  ; $eb0f : $00
	.db $00                                                  ; $eb10 : $00
	.db $00                                                  ; $eb11 : $00
	.db $00                                                  ; $eb12 : $00
	.db $00                                                  ; $eb13 : $00
	.db $00                                                  ; $eb14 : $00
	tsb $02                                                  ; $eb15 : $04, $02
	cop $01.b                                                  ; $eb17 : $02, $01
	ora $00, S                                                  ; $eb19 : $03, $00
	ora ($00, X)                                                  ; $eb1b : $01, $00
	ora ($00, X)                                                  ; $eb1d : $01, $00
	.db $00                                                  ; $eb1f : $00
	.db $00                                                  ; $eb20 : $00
	.db $00                                                  ; $eb21 : $00
	.db $00                                                  ; $eb22 : $00
	.db $00                                                  ; $eb23 : $00
	clc                                                  ; $eb24 : $18
	php                                                  ; $eb25 : $08
	tsb $080c.w                                                  ; $eb26 : $0c, $0c, $08
	.db $00                                                  ; $eb29 : $00
	tsb $04                                                  ; $eb2a : $04, $04
	eor $45                                                  ; $eb2c : $45, $45

br_4f_eb2e:
	lda ($a3, S), Y                                                  ; $eb2e : $b3, $a3
	.db $00                                                  ; $eb30 : $00
	.db $00                                                  ; $eb31 : $00
	.db $00                                                  ; $eb32 : $00
	.db $00                                                  ; $eb33 : $00
	.db $00                                                  ; $eb34 : $00
	php                                                  ; $eb35 : $08
	.db $00                                                  ; $eb36 : $00
	tsb $0404.w                                                  ; $eb37 : $0c, $04, $04
	.db $82                                                  ; $eb3a : $82

	stx $82                                                  ; $eb3b : $86, $82
	cmp [$41]                                                  ; $eb3d : $c7, $41
	cmp $00, S                                                  ; $eb3f : $c3, $00
	.db $00                                                  ; $eb41 : $00
	.db $00                                                  ; $eb42 : $00
	.db $00                                                  ; $eb43 : $00

br_4f_eb44:
	.db $00                                                  ; $eb44 : $00
	.db $00                                                  ; $eb45 : $00

br_4f_eb46:
	.db $00                                                  ; $eb46 : $00
	.db $00                                                  ; $eb47 : $00

br_4f_eb48:
	.db $00                                                  ; $eb48 : $00
	.db $00                                                  ; $eb49 : $00
	.db $00                                                  ; $eb4a : $00
	.db $00                                                  ; $eb4b : $00
	.db $00                                                  ; $eb4c : $00
	.db $00                                                  ; $eb4d : $00
	bra br_4f_ead0                                                  ; $eb4e : $80, $80

	.db $00                                                  ; $eb50 : $00

br_4f_eb51:
	.db $00                                                  ; $eb51 : $00
	.db $00                                                  ; $eb52 : $00

br_4f_eb53:
	.db $00                                                  ; $eb53 : $00
	.db $00                                                  ; $eb54 : $00

br_4f_eb55:
	.db $00                                                  ; $eb55 : $00
	.db $00                                                  ; $eb56 : $00
	.db $00                                                  ; $eb57 : $00
	.db $00                                                  ; $eb58 : $00
	.db $00                                                  ; $eb59 : $00
	.db $00                                                  ; $eb5a : $00
	.db $00                                                  ; $eb5b : $00
	.db $00                                                  ; $eb5c : $00
	.db $00                                                  ; $eb5d : $00
	.db $00                                                  ; $eb5e : $00
	bra br_4f_eb61                                                  ; $eb5f : $80, $00

br_4f_eb61:
	.db $00                                                  ; $eb61 : $00
	.db $00                                                  ; $eb62 : $00
	.db $00                                                  ; $eb63 : $00
	.db $00                                                  ; $eb64 : $00
	.db $00                                                  ; $eb65 : $00
	php                                                  ; $eb66 : $08
	php                                                  ; $eb67 : $08
	trb $ac1c.w                                                  ; $eb68 : $1c, $1c, $ac
	jml [$8e04.w]                                                  ; $eb6b : $dc, $04, $8e


	asl $0f                                                  ; $eb6e : $06, $0f
	.db $00                                                  ; $eb70 : $00
	.db $00                                                  ; $eb71 : $00
	.db $00                                                  ; $eb72 : $00
	.db $00                                                  ; $eb73 : $00
	.db $00                                                  ; $eb74 : $00
	.db $00                                                  ; $eb75 : $00
	bmi br_4f_eb78                                                  ; $eb76 : $30, $00

br_4f_eb78:
	rts                                                  ; $eb78 : $60


	.db $00                                                  ; $eb79 : $00
	.db $00                                                  ; $eb7a : $00
	.db $00                                                  ; $eb7b : $00
	.db $00                                                  ; $eb7c : $00
	.db $00                                                  ; $eb7d : $00
	.db $00                                                  ; $eb7e : $00
	.db $00                                                  ; $eb7f : $00
	ora ($03, X)                                                  ; $eb80 : $01, $03
	tsb $03                                                  ; $eb82 : $04, $03
	trb $08                                                  ; $eb84 : $14, $08
	ora ($00, S), Y                                                  ; $eb86 : $13, $00
	clc                                                  ; $eb88 : $18
	asl $00                                                  ; $eb89 : $06, $00
	asl $1028.w, X                                                  ; $eb8b : $1e, $28, $10
	eor $0020.w, X                                                  ; $eb8e : $5d, $20, $00
	.db $00                                                  ; $eb91 : $00
	.db $00                                                  ; $eb92 : $00
	.db $00                                                  ; $eb93 : $00
	.db $00                                                  ; $eb94 : $00
	ora $00, S                                                  ; $eb95 : $03, $00
	ora $001f00.l                                                  ; $eb97 : $0f, $00, $1f, $00
	and $007f00.l, X                                                  ; $eb9b : $3f, $00, $7f, $00
	rol $30aa.w, X                                                  ; $eb9f : $3e, $aa, $30
	sbc $79, S                                                  ; $eba2 : $e3, $79
	sbc ($7d, S), Y                                                  ; $eba4 : $f3, $7d
	cmp ($1e), Y                                                  ; $eba6 : $d1, $1e
	beq br_4f_ebd9                                                  ; $eba8 : $f0, $2f

	cpy #$3f.b                                                  ; $ebaa : $c0, $3f
	ldy $983f.w, X                                                  ; $ebac : $bc, $3f, $98
	adc [$41]                                                  ; $ebaf : $67, $41
	adc ($20, X)                                                  ; $ebb1 : $61, $20
	adc #$20.b                                                  ; $ebb3 : $69, $20
	adc ($20, S), Y                                                  ; $ebb5 : $73, $20
	bmi br_4f_ebb9                                                  ; $ebb7 : $30, $00

br_4f_ebb9:
	cpx #$00.b                                                  ; $ebb9 : $e0, $00
	sed                                                  ; $ebbb : $f8
	bit $00fe.w, X                                                  ; $ebbc : $3c, $fe, $00
	cmp [$00]                                                  ; $ebbf : $c7, $00
	.db $00                                                  ; $ebc1 : $00
	bra br_4f_eb44                                                  ; $ebc2 : $80, $80

	bra br_4f_eb46                                                  ; $ebc4 : $80, $80

	bra br_4f_eb48                                                  ; $ebc6 : $80, $80

	bra br_4f_ebca                                                  ; $ebc8 : $80, $00

br_4f_ebca:
	.db $00                                                  ; $ebca : $00
	cpy #$40.b                                                  ; $ebcb : $c0, $40
	bra br_4f_ec0f                                                  ; $ebcd : $80, $40

	bra br_4f_eb51                                                  ; $ebcf : $80, $80

	bra br_4f_eb53                                                  ; $ebd1 : $80, $80

	bra br_4f_eb55                                                  ; $ebd3 : $80, $80

	bra br_4f_ebd7                                                  ; $ebd5 : $80, $00

br_4f_ebd7:
	bra br_4f_ebd9                                                  ; $ebd7 : $80, $00

br_4f_ebd9:
	.db $00                                                  ; $ebd9 : $00
	.db $00                                                  ; $ebda : $00
	cpy #$00.b                                                  ; $ebdb : $c0, $00
	rti                                                  ; $ebdd : $40


	.db $00                                                  ; $ebde : $00
	.db $00                                                  ; $ebdf : $00
	asl $0e, X                                                  ; $ebe0 : $16, $0e
	ora ($0f, S), Y                                                  ; $ebe2 : $13, $0f
	ora ($0f), Y                                                  ; $ebe4 : $11, $0f
	php                                                  ; $ebe6 : $08
	ora [$04]                                                  ; $ebe7 : $07, $04
	ora $03, S                                                  ; $ebe9 : $03, $03
	.db $00                                                  ; $ebeb : $00
	.db $00                                                  ; $ebec : $00
	.db $00                                                  ; $ebed : $00
	.db $00                                                  ; $ebee : $00
	.db $00                                                  ; $ebef : $00
	ora ($00, X)                                                  ; $ebf0 : $01, $00
	.db $00                                                  ; $ebf2 : $00
	.db $00                                                  ; $ebf3 : $00
	.db $00                                                  ; $ebf4 : $00
	.db $00                                                  ; $ebf5 : $00
	.db $00                                                  ; $ebf6 : $00
	.db $00                                                  ; $ebf7 : $00
	.db $00                                                  ; $ebf8 : $00
	.db $00                                                  ; $ebf9 : $00
	.db $00                                                  ; $ebfa : $00
	.db $00                                                  ; $ebfb : $00
	.db $00                                                  ; $ebfc : $00
	.db $00                                                  ; $ebfd : $00
	.db $00                                                  ; $ebfe : $00

Call_4f_ebff:
	.db $00                                                  ; $ebff : $00
	sta $9170.w                                                  ; $ec00 : $8d, $70, $91

br_4f_ec03:
	ply                                                  ; $ec03 : $7a
	cpy $cc33.w                                                  ; $ec04 : $cc, $33, $cc
	and $ec, S                                                  ; $ec07 : $23, $ec
	ora $9b, S                                                  ; $ec09 : $03, $9b
	rts                                                  ; $ec0b : $60


	sta ($60), Y                                                  ; $ec0c : $91, $60
	tsc                                                  ; $ec0e : $3b

br_4f_ec0f:
	cpy #$00.b                                                  ; $ec0f : $c0, $00
	ror $7c10.w, X                                                  ; $ec11 : $7e, $10, $7c
	.db $00                                                  ; $ec14 : $00
	sei                                                  ; $ec15 : $78
	.db $00                                                  ; $ec16 : $00
	bvs br_4f_ec19                                                  ; $ec17 : $70, $00

br_4f_ec19:
	beq br_4f_ec1b                                                  ; $ec19 : $f0, $00

br_4f_ec1b:
	stz $00                                                  ; $ec1b : $64, $00
	ror $e700.w                                                  ; $ec1d : $6e, $00, $e7
	rol $c1                                                  ; $ec20 : $26, $c1
	inc $dc1c.w, X                                                  ; $ec22 : $fe, $1c, $dc
	and $67, S                                                  ; $ec25 : $23, $67
	sta $c03f.w, X                                                  ; $ec27 : $9d, $3f, $c0
	clc                                                  ; $ec2a : $18
	sbc $b1, S                                                  ; $ec2b : $e3, $b1
	eor $188877.l                                                  ; $ec2d : $4f, $77, $88, $18
	stp                                                  ; $ec31 : $db
	php                                                  ; $ec32 : $08
	cmp $6100.w, X                                                  ; $ec33 : $dd, $00, $61
	ora $3d                                                  ; $ec36 : $05, $3d
	.db $00                                                  ; $ec38 : $00
	asl                                                  ; $ec39 : $0a
	.db $00                                                  ; $ec3a : $00
	tsb $00                                                  ; $ec3b : $04, $00
	.db $00                                                  ; $ec3d : $00
	.db $00                                                  ; $ec3e : $00
	.db $00                                                  ; $ec3f : $00
	rti                                                  ; $ec40 : $40


	bra br_4f_ec03                                                  ; $ec41 : $80, $c0

	.db $00                                                  ; $ec43 : $00
	cpx #$00.b                                                  ; $ec44 : $e0, $00
	cpy #$20.b                                                  ; $ec46 : $c0, $20
	cpy #$00.b                                                  ; $ec48 : $c0, $00
	.db $30, $40                                                  ; $ec4a : $30, $40

	bvs br_4f_ec4e                                                  ; $ec4c : $70, $00

br_4f_ec4e:
	beq br_4f_ec50                                                  ; $ec4e : $f0, $00

br_4f_ec50:
	.db $00                                                  ; $ec50 : $00
	.db $00                                                  ; $ec51 : $00
	.db $00                                                  ; $ec52 : $00
	bra br_4f_ec55                                                  ; $ec53 : $80, $00

br_4f_ec55:
	rti                                                  ; $ec55 : $40


	.db $00                                                  ; $ec56 : $00
	jsr $6000.w                                                  ; $ec57 : $20, $00, $60
	bra br_4f_ecbc                                                  ; $ec5a : $80, $60

	.db $00                                                  ; $ec5c : $00
	bne br_4f_ec5f                                                  ; $ec5d : $d0, $00

br_4f_ec5f:
	bra br_4f_ec62                                                  ; $ec5f : $80, $01

	.db $00                                                  ; $ec61 : $00

br_4f_ec62:
	ora $00, S                                                  ; $ec62 : $03, $00
	.db $00                                                  ; $ec64 : $00
	ora $08, S                                                  ; $ec65 : $03, $08
	ora $000405.l                                                  ; $ec67 : $0f, $05, $04, $00
	.db $00                                                  ; $ec6b : $00
	.db $00                                                  ; $ec6c : $00
	.db $00                                                  ; $ec6d : $00
	.db $00                                                  ; $ec6e : $00
	.db $00                                                  ; $ec6f : $00
	.db $00                                                  ; $ec70 : $00
	.db $00                                                  ; $ec71 : $00
	.db $00                                                  ; $ec72 : $00
	.db $00                                                  ; $ec73 : $00
	.db $00                                                  ; $ec74 : $00
	ora $00, S                                                  ; $ec75 : $03, $00
	ora [$00]                                                  ; $ec77 : $07, $00
	.db $00                                                  ; $ec79 : $00
	.db $00                                                  ; $ec7a : $00
	.db $00                                                  ; $ec7b : $00
	.db $00                                                  ; $ec7c : $00

br_4f_ec7d:
	.db $00                                                  ; $ec7d : $00
	.db $00                                                  ; $ec7e : $00
	.db $00                                                  ; $ec7f : $00
	tdc                                                  ; $ec80 : $7b
	bra br_4f_ecf1                                                  ; $ec81 : $80, $6e

	sta ($f6, X)                                                  ; $ec83 : $81, $f6
	ora ($1b, X)                                                  ; $ec85 : $01, $1b
	cpx #$ff.b                                                  ; $ec87 : $e0, $ff
	.db $00                                                  ; $ec89 : $00
	adc $000f00.l, X                                                  ; $ec8a : $7f, $00, $0f, $00
	.db $00                                                  ; $ec8e : $00
	.db $00                                                  ; $ec8f : $00
	.db $00                                                  ; $ec90 : $00
	sbc [$00]                                                  ; $ec91 : $e7, $00
	sbc ($00, S), Y                                                  ; $ec93 : $f3, $00
	xba                                                  ; $ec95 : $eb
	.db $00                                                  ; $ec96 : $00
	sbc $00                                                  ; $ec97 : $e5, $00
	.db $00                                                  ; $ec99 : $00
	.db $00                                                  ; $ec9a : $00
	.db $00                                                  ; $ec9b : $00

br_4f_ec9c:
	.db $00                                                  ; $ec9c : $00
	.db $00                                                  ; $ec9d : $00
	.db $00                                                  ; $ec9e : $00
	.db $00                                                  ; $ec9f : $00
	tsx                                                  ; $eca0 : $ba
	mvp $e0, $33                                                  ; $eca1 : $44, $33, $e0
	tcs                                                  ; $eca4 : $1b
	bne br_4f_ecf2                                                  ; $eca5 : $d0, $4b

	sep #$df.b                                                  ; $eca7 : $e2, $df
	.db $00                                                  ; $eca9 : $00
	inc $f000.w, X                                                  ; $ecaa : $fe, $00, $f0
	.db $00                                                  ; $ecad : $00
	.db $00                                                  ; $ecae : $00
	.db $00                                                  ; $ecaf : $00
	.db $00                                                  ; $ecb0 : $00
	sta $00, S                                                  ; $ecb1 : $83, $00
	cpy $c720.w                                                  ; $ecb3 : $cc, $20, $c7
	bvc br_4f_ec9c                                                  ; $ecb6 : $50, $e4

	.db $00                                                  ; $ecb8 : $00
	rts                                                  ; $ecb9 : $60


	.db $00                                                  ; $ecba : $00
	.db $00                                                  ; $ecbb : $00

br_4f_ecbc:
	.db $00                                                  ; $ecbc : $00
	.db $00                                                  ; $ecbd : $00
	.db $00                                                  ; $ecbe : $00
	.db $00                                                  ; $ecbf : $00
	cpx #$00.b                                                  ; $ecc0 : $e0, $00
	cpy #$00.b                                                  ; $ecc2 : $c0, $00
	cpy #$80.b                                                  ; $ecc4 : $c0, $80
	bra br_4f_ecc8                                                  ; $ecc6 : $80, $00

br_4f_ecc8:
	bra br_4f_ecca                                                  ; $ecc8 : $80, $00

br_4f_ecca:
	.db $00                                                  ; $ecca : $00
	.db $00                                                  ; $eccb : $00
	.db $00                                                  ; $eccc : $00
	.db $00                                                  ; $eccd : $00
	.db $00                                                  ; $ecce : $00
	.db $00                                                  ; $eccf : $00
	.db $00                                                  ; $ecd0 : $00
	rts                                                  ; $ecd1 : $60


	.db $00                                                  ; $ecd2 : $00
	.db $00                                                  ; $ecd3 : $00
	.db $00                                                  ; $ecd4 : $00
	.db $00                                                  ; $ecd5 : $00
	.db $00                                                  ; $ecd6 : $00
	.db $00                                                  ; $ecd7 : $00
	.db $00                                                  ; $ecd8 : $00
	.db $00                                                  ; $ecd9 : $00
	.db $00                                                  ; $ecda : $00
	.db $00                                                  ; $ecdb : $00
	.db $00                                                  ; $ecdc : $00
	.db $00                                                  ; $ecdd : $00
	.db $00                                                  ; $ecde : $00
	.db $00                                                  ; $ecdf : $00
	.db $00                                                  ; $ece0 : $00
	.db $00                                                  ; $ece1 : $00
	.db $00                                                  ; $ece2 : $00
	.db $00                                                  ; $ece3 : $00
	.db $00                                                  ; $ece4 : $00
	.db $00                                                  ; $ece5 : $00
	.db $00                                                  ; $ece6 : $00
	.db $00                                                  ; $ece7 : $00
	.db $00                                                  ; $ece8 : $00
	.db $00                                                  ; $ece9 : $00
	.db $00                                                  ; $ecea : $00
	.db $00                                                  ; $eceb : $00
	.db $00                                                  ; $ecec : $00
	.db $00                                                  ; $eced : $00
	.db $00                                                  ; $ecee : $00
	.db $00                                                  ; $ecef : $00
	.db $00                                                  ; $ecf0 : $00

br_4f_ecf1:
	.db $00                                                  ; $ecf1 : $00

br_4f_ecf2:
	.db $00                                                  ; $ecf2 : $00
	.db $00                                                  ; $ecf3 : $00
	.db $00                                                  ; $ecf4 : $00
	.db $00                                                  ; $ecf5 : $00
	.db $00                                                  ; $ecf6 : $00
	.db $00                                                  ; $ecf7 : $00
	.db $00                                                  ; $ecf8 : $00
	.db $00                                                  ; $ecf9 : $00
	.db $00                                                  ; $ecfa : $00
	.db $00                                                  ; $ecfb : $00
	.db $00                                                  ; $ecfc : $00
	.db $00                                                  ; $ecfd : $00
	.db $00                                                  ; $ecfe : $00
	.db $00                                                  ; $ecff : $00
	.db $00                                                  ; $ed00 : $00
	.db $00                                                  ; $ed01 : $00
	.db $00                                                  ; $ed02 : $00
	.db $00                                                  ; $ed03 : $00
	.db $00                                                  ; $ed04 : $00
	.db $00                                                  ; $ed05 : $00
	rts                                                  ; $ed06 : $60


	rts                                                  ; $ed07 : $60


	bmi br_4f_ed0a                                                  ; $ed08 : $30, $00

br_4f_ed0a:
	ora $010506.l                                                  ; $ed0a : $0f, $06, $05, $01
	ora ($07, X)                                                  ; $ed0e : $01, $07
	.db $00                                                  ; $ed10 : $00
	.db $00                                                  ; $ed11 : $00
	.db $00                                                  ; $ed12 : $00
	.db $00                                                  ; $ed13 : $00
	.db $00                                                  ; $ed14 : $00
	.db $00                                                  ; $ed15 : $00
	bvs br_4f_ed88                                                  ; $ed16 : $70, $70

	tsb $000c.w                                                  ; $ed18 : $0c, $0c, $00
	asl $02                                                  ; $ed1b : $06, $02
	ora $00, S                                                  ; $ed1d : $03, $00
	ora ($00, X)                                                  ; $ed1f : $01, $00
	.db $00                                                  ; $ed21 : $00
	.db $00                                                  ; $ed22 : $00
	.db $00                                                  ; $ed23 : $00
	.db $00                                                  ; $ed24 : $00
	.db $00                                                  ; $ed25 : $00
	.db $00                                                  ; $ed26 : $00
	.db $00                                                  ; $ed27 : $00
	.db $00                                                  ; $ed28 : $00
	.db $00                                                  ; $ed29 : $00
	.db $00                                                  ; $ed2a : $00
	.db $00                                                  ; $ed2b : $00
	ldy #$20.b                                                  ; $ed2c : $a0, $20
	cpx #$80.b                                                  ; $ed2e : $e0, $80
	.db $00                                                  ; $ed30 : $00
	.db $00                                                  ; $ed31 : $00
	.db $00                                                  ; $ed32 : $00
	.db $00                                                  ; $ed33 : $00
	.db $00                                                  ; $ed34 : $00
	.db $00                                                  ; $ed35 : $00
	.db $00                                                  ; $ed36 : $00
	.db $00                                                  ; $ed37 : $00
	.db $00                                                  ; $ed38 : $00
	.db $00                                                  ; $ed39 : $00
	jsr $3020.w                                                  ; $ed3a : $20, $20, $30
	bmi br_4f_ed57                                                  ; $ed3d : $30, $18

	tya                                                  ; $ed3f : $98
	.db $00                                                  ; $ed40 : $00
	.db $00                                                  ; $ed41 : $00
	.db $00                                                  ; $ed42 : $00
	.db $00                                                  ; $ed43 : $00
	.db $00                                                  ; $ed44 : $00
	.db $00                                                  ; $ed45 : $00
	.db $00                                                  ; $ed46 : $00
	.db $00                                                  ; $ed47 : $00
	.db $00                                                  ; $ed48 : $00
	.db $00                                                  ; $ed49 : $00
	.db $00                                                  ; $ed4a : $00
	.db $00                                                  ; $ed4b : $00
	.db $00                                                  ; $ed4c : $00
	.db $00                                                  ; $ed4d : $00
	.db $00                                                  ; $ed4e : $00
	.db $00                                                  ; $ed4f : $00
	.db $00                                                  ; $ed50 : $00
	.db $00                                                  ; $ed51 : $00
	.db $00                                                  ; $ed52 : $00
	.db $00                                                  ; $ed53 : $00
	.db $00                                                  ; $ed54 : $00
	.db $00                                                  ; $ed55 : $00
	.db $00                                                  ; $ed56 : $00

br_4f_ed57:
	.db $00                                                  ; $ed57 : $00
	.db $00                                                  ; $ed58 : $00
	.db $00                                                  ; $ed59 : $00
	.db $00                                                  ; $ed5a : $00
	.db $00                                                  ; $ed5b : $00
	.db $00                                                  ; $ed5c : $00
	.db $00                                                  ; $ed5d : $00
	.db $00                                                  ; $ed5e : $00
	.db $00                                                  ; $ed5f : $00
	.db $00                                                  ; $ed60 : $00
	.db $00                                                  ; $ed61 : $00
	.db $00                                                  ; $ed62 : $00
	.db $00                                                  ; $ed63 : $00
	.db $00                                                  ; $ed64 : $00
	.db $00                                                  ; $ed65 : $00
	.db $00                                                  ; $ed66 : $00
	.db $00                                                  ; $ed67 : $00
	.db $00                                                  ; $ed68 : $00
	.db $00                                                  ; $ed69 : $00
	.db $00                                                  ; $ed6a : $00
	tsb $0400.w                                                  ; $ed6b : $0c, $00, $04
	.db $00                                                  ; $ed6e : $00
	.db $00                                                  ; $ed6f : $00
	.db $00                                                  ; $ed70 : $00
	.db $00                                                  ; $ed71 : $00
	.db $00                                                  ; $ed72 : $00
	.db $00                                                  ; $ed73 : $00
	.db $00                                                  ; $ed74 : $00
	.db $00                                                  ; $ed75 : $00
	.db $00                                                  ; $ed76 : $00
	.db $00                                                  ; $ed77 : $00
	.db $00                                                  ; $ed78 : $00
	.db $00                                                  ; $ed79 : $00
	.db $00                                                  ; $ed7a : $00
	.db $00                                                  ; $ed7b : $00
	cop $00.b                                                  ; $ed7c : $02, $00
	cop $01.b                                                  ; $ed7e : $02, $01
	clc                                                  ; $ed80 : $18
	ora [$0d]                                                  ; $ed81 : $07, $0d
	rol $3d02.w, X                                                  ; $ed83 : $3e, $02, $3d
	ora ($7f, X)                                                  ; $ed86 : $01, $7f

Call_4f_ed88:
br_4f_ed88:
	asl $5a                                                  ; $ed88 : $06, $5a
	ora [$33]                                                  ; $ed8a : $07, $33
	sta $8a67.w, Y                                                  ; $ed8c : $99, $67, $8a
	adc $00                                                  ; $ed8f : $65, $00
	clc                                                  ; $ed91 : $18
	tsb $003c.w                                                  ; $ed92 : $0c, $3c, $00
	and $01                                                  ; $ed95 : $25, $01
	eor $23, S                                                  ; $ed97 : $43, $23
	wdm                                                  ; $ed99 : $42
	rti                                                  ; $ed9a : $40


	bit $8f01.w, X                                                  ; $ed9b : $3c, $01, $8f
	.db $00                                                  ; $ed9e : $00
	sbc $9410f4.l, X                                                  ; $ed9f : $ff, $f4, $10, $94
	.db $00                                                  ; $eda3 : $00
	ldy $c0                                                  ; $eda4 : $a4, $c0
	cpx $1cf0.w                                                  ; $eda6 : $ec, $f0, $1c
	rts                                                  ; $eda9 : $60


	php                                                  ; $edaa : $08
	jsr ($9e7c.w, X)                                                  ; $edab : $fc, $7c, $9e
	bit $08de.w                                                  ; $edae : $2c, $de, $08
	sed                                                  ; $edb1 : $f8
	php                                                  ; $edb2 : $08
	inx                                                  ; $edb3 : $e8
	.db $80, $d8                                                  ; $edb4 : $80, $d8

	cpx #$f0.b                                                  ; $edb6 : $e0, $f0
	.db $80, $78                                                  ; $edb8 : $80, $78

	php                                                  ; $edba : $08
	jsr ($fe1c.w, X)                                                  ; $edbb : $fc, $1c, $fe
	tsb $00fe.w                                                  ; $edbe : $0c, $fe, $00
	.db $00                                                  ; $edc1 : $00
	.db $00                                                  ; $edc2 : $00
	.db $00                                                  ; $edc3 : $00
	.db $00                                                  ; $edc4 : $00
	.db $00                                                  ; $edc5 : $00
	.db $00                                                  ; $edc6 : $00
	.db $00                                                  ; $edc7 : $00
	.db $00                                                  ; $edc8 : $00
	.db $00                                                  ; $edc9 : $00
	.db $00                                                  ; $edca : $00
	.db $00                                                  ; $edcb : $00
	.db $00                                                  ; $edcc : $00
	.db $00                                                  ; $edcd : $00
	.db $00                                                  ; $edce : $00
	.db $00                                                  ; $edcf : $00
	.db $00                                                  ; $edd0 : $00
	.db $00                                                  ; $edd1 : $00
	.db $00                                                  ; $edd2 : $00
	.db $00                                                  ; $edd3 : $00
	.db $00                                                  ; $edd4 : $00
	.db $00                                                  ; $edd5 : $00
	.db $00                                                  ; $edd6 : $00
	.db $00                                                  ; $edd7 : $00
	.db $00                                                  ; $edd8 : $00
	.db $00                                                  ; $edd9 : $00
	.db $00                                                  ; $edda : $00
	.db $00                                                  ; $eddb : $00
	.db $00                                                  ; $eddc : $00
	.db $00                                                  ; $eddd : $00
	.db $00                                                  ; $edde : $00
	.db $00                                                  ; $eddf : $00
	.db $00                                                  ; $ede0 : $00
	.db $00                                                  ; $ede1 : $00
	ora ($00, X)                                                  ; $ede2 : $01, $00
	ora ($00, X)                                                  ; $ede4 : $01, $00
	ora $04                                                  ; $ede6 : $05, $04
	ora ($00, X)                                                  ; $ede8 : $01, $00
	phd                                                  ; $edea : $0b
	asl                                                  ; $edeb : $0a
	phd                                                  ; $edec : $0b
	asl                                                  ; $eded : $0a
	phd                                                  ; $edee : $0b
	asl                                                  ; $edef : $0a
	cop $01.b                                                  ; $edf0 : $02, $01
	cop $00.b                                                  ; $edf2 : $02, $00
	cop $00.b                                                  ; $edf4 : $02, $00
	cop $00.b                                                  ; $edf6 : $02, $00
	asl $00                                                  ; $edf8 : $06, $00
	tsb $00                                                  ; $edfa : $04, $00
	tsb $00                                                  ; $edfc : $04, $00
	tsb $00                                                  ; $edfe : $04, $00
	sta $b066.w, Y                                                  ; $ee00 : $99, $66, $b0
	eor $100e50.l                                                  ; $ee03 : $4f, $50, $0e, $10
	jmp $4836.w                                                  ; $ee07 : $4c, $36, $48


	cmp $ab00.w, Y                                                  ; $ee0a : $d9, $00, $ab
	rti                                                  ; $ee0d : $40


	eor $e2, X                                                  ; $ee0e : $55, $e2
	.db $00                                                  ; $ee10 : $00
	sta $009f00.l, X                                                  ; $ee11 : $9f, $00, $9f, $00
	sbc $00bf00.l, X                                                  ; $ee15 : $ff, $00, $bf, $00
	lda $003e00.l, X                                                  ; $ee19 : $bf, $00, $3e, $00
	ora $0f00.w, X                                                  ; $ee1d : $1d, $00, $0f
	rep #$1c.b                                                  ; $ee20 : $c2, $1c
	adc ($0c)                                                  ; $ee22 : $72, $0c
	sbc $7504.w, Y                                                  ; $ee24 : $f9, $04, $75
	.db $00                                                  ; $ee27 : $00
	sbc ($04, S), Y                                                  ; $ee28 : $f3, $04
	clc                                                  ; $ee2a : $18
	asl $19                                                  ; $ee2b : $06, $19
	asl $bb                                                  ; $ee2d : $06, $bb
	tsb $00                                                  ; $ee2f : $04, $00
	inc $9e00.w, X                                                  ; $ee31 : $fe, $00, $9e
	.db $00                                                  ; $ee34 : $00
	ora $008f00.l                                                  ; $ee35 : $0f, $00, $8f, $00
	ora $00e700.l                                                  ; $ee39 : $0f, $00, $e7, $00
	sbc [$00]                                                  ; $ee3d : $e7, $00
	cmp [$00]                                                  ; $ee3f : $c7, $00
	.db $00                                                  ; $ee41 : $00
	.db $00                                                  ; $ee42 : $00
	.db $00                                                  ; $ee43 : $00
	.db $00                                                  ; $ee44 : $00
	.db $00                                                  ; $ee45 : $00
	.db $00                                                  ; $ee46 : $00
	.db $00                                                  ; $ee47 : $00
	.db $00                                                  ; $ee48 : $00
	.db $00                                                  ; $ee49 : $00
	.db $00                                                  ; $ee4a : $00
	.db $00                                                  ; $ee4b : $00
	.db $00                                                  ; $ee4c : $00
	.db $00                                                  ; $ee4d : $00
	.db $00                                                  ; $ee4e : $00
	.db $00                                                  ; $ee4f : $00
	.db $00                                                  ; $ee50 : $00
	.db $00                                                  ; $ee51 : $00
	.db $00                                                  ; $ee52 : $00
	.db $00                                                  ; $ee53 : $00
	.db $00                                                  ; $ee54 : $00
	.db $00                                                  ; $ee55 : $00
	.db $00                                                  ; $ee56 : $00
	.db $00                                                  ; $ee57 : $00
	.db $00                                                  ; $ee58 : $00
	.db $00                                                  ; $ee59 : $00
	.db $00                                                  ; $ee5a : $00
	.db $00                                                  ; $ee5b : $00
	.db $00                                                  ; $ee5c : $00
	.db $00                                                  ; $ee5d : $00
	.db $00                                                  ; $ee5e : $00
	.db $00                                                  ; $ee5f : $00
	ora $0704.w                                                  ; $ee60 : $0d, $04, $07
	ora [$05]                                                  ; $ee63 : $07, $05
	ora $02, S                                                  ; $ee65 : $03, $02
	ora ($01, X)                                                  ; $ee67 : $01, $01
	.db $00                                                  ; $ee69 : $00
	.db $00                                                  ; $ee6a : $00
	.db $00                                                  ; $ee6b : $00
	.db $00                                                  ; $ee6c : $00
	.db $00                                                  ; $ee6d : $00
	.db $00                                                  ; $ee6e : $00
	.db $00                                                  ; $ee6f : $00
	cop $00.b                                                  ; $ee70 : $02, $00
	.db $00                                                  ; $ee72 : $00
	.db $00                                                  ; $ee73 : $00
	.db $00                                                  ; $ee74 : $00
	.db $00                                                  ; $ee75 : $00
	.db $00                                                  ; $ee76 : $00
	.db $00                                                  ; $ee77 : $00
	.db $00                                                  ; $ee78 : $00
	.db $00                                                  ; $ee79 : $00
	.db $00                                                  ; $ee7a : $00
	.db $00                                                  ; $ee7b : $00
	.db $00                                                  ; $ee7c : $00
	.db $00                                                  ; $ee7d : $00
	.db $00                                                  ; $ee7e : $00
	.db $00                                                  ; $ee7f : $00
	ora #$16.b                                                  ; $ee80 : $09, $16
	lda $c3bea0.l, X                                                  ; $ee82 : $bf, $a0, $be, $c3
	jsr ($ff03.w, X)                                                  ; $ee86 : $fc, $03, $ff
	.db $00                                                  ; $ee89 : $00
	adc $000f00.l, X                                                  ; $ee8a : $7f, $00, $0f, $00
	.db $00                                                  ; $ee8e : $00
	.db $00                                                  ; $ee8f : $00
	cpx #$4007.w                                                  ; $ee90 : $e0, $07, $40
	tsb $02                                                  ; $ee93 : $04, $02
	ora $00, S                                                  ; $ee95 : $03, $00
	ora ($00, X)                                                  ; $ee97 : $01, $00
	.db $00                                                  ; $ee99 : $00
	.db $00                                                  ; $ee9a : $00
	.db $00                                                  ; $ee9b : $00
	.db $00                                                  ; $ee9c : $00
	.db $00                                                  ; $ee9d : $00
	.db $00                                                  ; $ee9e : $00
	.db $00                                                  ; $ee9f : $00
	ror                                                  ; $eea0 : $6a
	tsb $9d                                                  ; $eea1 : $04, $9d
	cop $7e.b                                                  ; $eea3 : $02, $7e
	ora ($0e, X)                                                  ; $eea5 : $01, $0e
	cpx #$00ff.w                                                  ; $eea7 : $e0, $ff, $00
	inc $f000.w, X                                                  ; $eeaa : $fe, $00, $f0
	.db $00                                                  ; $eead : $00
	.db $00                                                  ; $eeae : $00
	.db $00                                                  ; $eeaf : $00

br_4f_eeb0:
	.db $00                                                  ; $eeb0 : $00
	sta [$00], Y                                                  ; $eeb1 : $97, $00
	adc [$00]                                                  ; $eeb3 : $67, $00
	sta ($00, S), Y                                                  ; $eeb5 : $93, $00
	sbc ($00), Y                                                  ; $eeb7 : $f1, $00
	.db $00                                                  ; $eeb9 : $00
	.db $00                                                  ; $eeba : $00
	.db $00                                                  ; $eebb : $00
	.db $00                                                  ; $eebc : $00
	.db $00                                                  ; $eebd : $00
	.db $00                                                  ; $eebe : $00
	.db $00                                                  ; $eebf : $00
	cpx #$a020.w                                                  ; $eec0 : $e0, $20, $a0
	.db $00                                                  ; $eec3 : $00
	.db $10, $f0                                                  ; $eec4 : $10, $f0

	.db $70, $d0                                                  ; $eec6 : $70, $d0

	bra br_4f_eeca                                                  ; $eec8 : $80, $00

br_4f_eeca:
	.db $00                                                  ; $eeca : $00
	.db $00                                                  ; $eecb : $00
	.db $00                                                  ; $eecc : $00
	.db $00                                                  ; $eecd : $00
	.db $00                                                  ; $eece : $00
	.db $00                                                  ; $eecf : $00
	.db $00                                                  ; $eed0 : $00
	cpy #$c000.w                                                  ; $eed1 : $c0, $00, $c0
	.db $00                                                  ; $eed4 : $00
	cpx #$8000.w                                                  ; $eed5 : $e0, $00, $80
	.db $00                                                  ; $eed8 : $00
	.db $00                                                  ; $eed9 : $00
	.db $00                                                  ; $eeda : $00
	.db $00                                                  ; $eedb : $00
	.db $00                                                  ; $eedc : $00
	.db $00                                                  ; $eedd : $00
	.db $00                                                  ; $eede : $00
	.db $00                                                  ; $eedf : $00
	.db $00                                                  ; $eee0 : $00
	.db $00                                                  ; $eee1 : $00
	.db $00                                                  ; $eee2 : $00
	.db $00                                                  ; $eee3 : $00
	.db $00                                                  ; $eee4 : $00
	.db $00                                                  ; $eee5 : $00
	.db $00                                                  ; $eee6 : $00
	.db $00                                                  ; $eee7 : $00
	.db $00                                                  ; $eee8 : $00
	.db $00                                                  ; $eee9 : $00
	.db $00                                                  ; $eeea : $00
	.db $00                                                  ; $eeeb : $00
	.db $00                                                  ; $eeec : $00
	.db $00                                                  ; $eeed : $00
	.db $00                                                  ; $eeee : $00
	.db $00                                                  ; $eeef : $00
	.db $00                                                  ; $eef0 : $00
	.db $00                                                  ; $eef1 : $00
	.db $00                                                  ; $eef2 : $00
	.db $00                                                  ; $eef3 : $00
	.db $00                                                  ; $eef4 : $00
	.db $00                                                  ; $eef5 : $00
	.db $00                                                  ; $eef6 : $00
	.db $00                                                  ; $eef7 : $00
	.db $00                                                  ; $eef8 : $00
	.db $00                                                  ; $eef9 : $00
	.db $00                                                  ; $eefa : $00
	.db $00                                                  ; $eefb : $00
	.db $00                                                  ; $eefc : $00
	.db $00                                                  ; $eefd : $00
	.db $00                                                  ; $eefe : $00
	.db $00                                                  ; $eeff : $00
	.db $00                                                  ; $ef00 : $00
	.db $00                                                  ; $ef01 : $00
	bra br_4f_ef04                                                  ; $ef02 : $80, $00

br_4f_ef04:
	bra br_4f_ef06                                                  ; $ef04 : $80, $00

br_4f_ef06:
	cpx #$7020.w                                                  ; $ef06 : $e0, $20, $70
	.db $00                                                  ; $ef09 : $00
	eor $016506.l                                                  ; $ef0a : $4f, $06, $65, $01
	and ($07), Y                                                  ; $ef0e : $31, $07
	.db $00                                                  ; $ef10 : $00
	.db $00                                                  ; $ef11 : $00
	.db $00                                                  ; $ef12 : $00
	.db $00                                                  ; $ef13 : $00
	.db $00                                                  ; $ef14 : $00
	.db $00                                                  ; $ef15 : $00
	bmi br_4f_ef48                                                  ; $ef16 : $30, $30

	tsb $000c.w                                                  ; $ef18 : $0c, $0c, $00
	asl $02                                                  ; $ef1b : $06, $02
	ora $00, S                                                  ; $ef1d : $03, $00
	ora ($00, X)                                                  ; $ef1f : $01, $00
	.db $00                                                  ; $ef21 : $00
	.db $00                                                  ; $ef22 : $00
	.db $00                                                  ; $ef23 : $00
	.db $00                                                  ; $ef24 : $00
	.db $00                                                  ; $ef25 : $00
	.db $00                                                  ; $ef26 : $00
	.db $00                                                  ; $ef27 : $00
	.db $00                                                  ; $ef28 : $00
	.db $00                                                  ; $ef29 : $00
	php                                                  ; $ef2a : $08
	.db $00                                                  ; $ef2b : $00
	bcs br_4f_ef2e                                                  ; $ef2c : $b0, $00

br_4f_ef2e:
	beq br_4f_eeb0                                                  ; $ef2e : $f0, $80

	.db $00                                                  ; $ef30 : $00
	.db $00                                                  ; $ef31 : $00
	.db $00                                                  ; $ef32 : $00
	.db $00                                                  ; $ef33 : $00
	.db $00                                                  ; $ef34 : $00
	.db $00                                                  ; $ef35 : $00
	.db $00                                                  ; $ef36 : $00
	.db $00                                                  ; $ef37 : $00
	.db $00                                                  ; $ef38 : $00
	.db $00                                                  ; $ef39 : $00
	jsr $0020.w                                                  ; $ef3a : $20, $20, $00
	.db $00                                                  ; $ef3d : $00
	php                                                  ; $ef3e : $08
	dey                                                  ; $ef3f : $88
	.db $00                                                  ; $ef40 : $00
	.db $00                                                  ; $ef41 : $00
	.db $00                                                  ; $ef42 : $00
	.db $00                                                  ; $ef43 : $00
	.db $00                                                  ; $ef44 : $00
	.db $00                                                  ; $ef45 : $00
	.db $00                                                  ; $ef46 : $00
	.db $00                                                  ; $ef47 : $00

br_4f_ef48:
	.db $00                                                  ; $ef48 : $00
	.db $00                                                  ; $ef49 : $00
	.db $00                                                  ; $ef4a : $00
	.db $00                                                  ; $ef4b : $00
	.db $00                                                  ; $ef4c : $00
	.db $00                                                  ; $ef4d : $00
	.db $00                                                  ; $ef4e : $00
	.db $00                                                  ; $ef4f : $00
	.db $00                                                  ; $ef50 : $00
	.db $00                                                  ; $ef51 : $00
	.db $00                                                  ; $ef52 : $00
	.db $00                                                  ; $ef53 : $00
	.db $00                                                  ; $ef54 : $00
	.db $00                                                  ; $ef55 : $00
	.db $00                                                  ; $ef56 : $00
	.db $00                                                  ; $ef57 : $00
	.db $00                                                  ; $ef58 : $00
	.db $00                                                  ; $ef59 : $00
	.db $00                                                  ; $ef5a : $00
	.db $00                                                  ; $ef5b : $00
	.db $00                                                  ; $ef5c : $00
	.db $00                                                  ; $ef5d : $00
	.db $00                                                  ; $ef5e : $00
	.db $00                                                  ; $ef5f : $00
	.db $00                                                  ; $ef60 : $00
	.db $00                                                  ; $ef61 : $00
	.db $00                                                  ; $ef62 : $00
	.db $00                                                  ; $ef63 : $00
	.db $00                                                  ; $ef64 : $00
	.db $00                                                  ; $ef65 : $00
	.db $00                                                  ; $ef66 : $00
	.db $00                                                  ; $ef67 : $00
	.db $00                                                  ; $ef68 : $00
	.db $00                                                  ; $ef69 : $00
	.db $00                                                  ; $ef6a : $00
	tsb $0400.w                                                  ; $ef6b : $0c, $00, $04
	.db $00                                                  ; $ef6e : $00
	.db $00                                                  ; $ef6f : $00
	.db $00                                                  ; $ef70 : $00
	.db $00                                                  ; $ef71 : $00
	.db $00                                                  ; $ef72 : $00
	.db $00                                                  ; $ef73 : $00
	.db $00                                                  ; $ef74 : $00
	.db $00                                                  ; $ef75 : $00
	.db $00                                                  ; $ef76 : $00
	.db $00                                                  ; $ef77 : $00
	.db $00                                                  ; $ef78 : $00
	.db $00                                                  ; $ef79 : $00
	.db $00                                                  ; $ef7a : $00
	.db $00                                                  ; $ef7b : $00
	cop $00.b                                                  ; $ef7c : $02, $00
	cop $01.b                                                  ; $ef7e : $02, $01
	sec                                                  ; $ef80 : $38
	ora [$3d]                                                  ; $ef81 : $07, $3d
	asl $3d02.w                                                  ; $ef83 : $0e, $02, $3d
	ora ($7f, X)                                                  ; $ef86 : $01, $7f
	asl $5a                                                  ; $ef88 : $06, $5a
	ora [$33]                                                  ; $ef8a : $07, $33
	sta $8a67.w, Y                                                  ; $ef8c : $99, $67, $8a
	adc $00                                                  ; $ef8f : $65, $00
	php                                                  ; $ef91 : $08
	tsb $000c.w                                                  ; $ef92 : $0c, $0c, $00
	and $01                                                  ; $ef95 : $25, $01
	eor $23, S                                                  ; $ef97 : $43, $23
	wdm                                                  ; $ef99 : $42
	rti                                                  ; $ef9a : $40


	bit $8f01.w, X                                                  ; $ef9b : $3c, $01, $8f
	.db $00                                                  ; $ef9e : $00
	sbc $f410f4.l, X                                                  ; $ef9f : $ff, $f4, $10, $f4
	.db $00                                                  ; $efa3 : $00
	cpy $00                                                  ; $efa4 : $c4, $00
	cpx $9c30.w                                                  ; $efa6 : $ec, $30, $9c
	rts                                                  ; $efa9 : $60


	dey                                                  ; $efaa : $88
	jmp ($9e7c.w, X)                                                  ; $efab : $7c, $7c, $9e


	bit $08de.w                                                  ; $efae : $2c, $de, $08
	tya                                                  ; $efb1 : $98
	php                                                  ; $efb2 : $08
	php                                                  ; $efb3 : $08
	.db $00                                                  ; $efb4 : $00
	sec                                                  ; $efb5 : $38
	jsr $0030.w                                                  ; $efb6 : $20, $30, $00
	sei                                                  ; $efb9 : $78
	php                                                  ; $efba : $08
	jmp ($fe1c.w, X)                                                  ; $efbb : $7c, $1c, $fe


	tsb $00fe.w                                                  ; $efbe : $0c, $fe, $00
	.db $00                                                  ; $efc1 : $00
	.db $00                                                  ; $efc2 : $00
	.db $00                                                  ; $efc3 : $00
	.db $00                                                  ; $efc4 : $00
	.db $00                                                  ; $efc5 : $00
	.db $00                                                  ; $efc6 : $00
	.db $00                                                  ; $efc7 : $00
	.db $00                                                  ; $efc8 : $00
	.db $00                                                  ; $efc9 : $00
	.db $00                                                  ; $efca : $00
	.db $00                                                  ; $efcb : $00
	.db $00                                                  ; $efcc : $00
	.db $00                                                  ; $efcd : $00
	.db $00                                                  ; $efce : $00
	.db $00                                                  ; $efcf : $00
	.db $00                                                  ; $efd0 : $00
	.db $00                                                  ; $efd1 : $00
	.db $00                                                  ; $efd2 : $00
	.db $00                                                  ; $efd3 : $00
	.db $00                                                  ; $efd4 : $00
	.db $00                                                  ; $efd5 : $00
	.db $00                                                  ; $efd6 : $00
	.db $00                                                  ; $efd7 : $00
	.db $00                                                  ; $efd8 : $00
	.db $00                                                  ; $efd9 : $00
	.db $00                                                  ; $efda : $00
	.db $00                                                  ; $efdb : $00
	.db $00                                                  ; $efdc : $00
	.db $00                                                  ; $efdd : $00
	.db $00                                                  ; $efde : $00
	.db $00                                                  ; $efdf : $00
	.db $00                                                  ; $efe0 : $00
	.db $00                                                  ; $efe1 : $00
	ora ($00, X)                                                  ; $efe2 : $01, $00
	ora ($00, X)                                                  ; $efe4 : $01, $00
	ora $04                                                  ; $efe6 : $05, $04
	ora ($00, X)                                                  ; $efe8 : $01, $00
	phd                                                  ; $efea : $0b
	asl                                                  ; $efeb : $0a
	phd                                                  ; $efec : $0b
	asl                                                  ; $efed : $0a
	phd                                                  ; $efee : $0b
	asl                                                  ; $efef : $0a
	cop $01.b                                                  ; $eff0 : $02, $01
	cop $00.b                                                  ; $eff2 : $02, $00
	cop $00.b                                                  ; $eff4 : $02, $00
	cop $00.b                                                  ; $eff6 : $02, $00
	asl $00                                                  ; $eff8 : $06, $00
	tsb $00                                                  ; $effa : $04, $00
	tsb $00                                                  ; $effc : $04, $00
	tsb $00                                                  ; $effe : $04, $00
	inc $f1, X                                                  ; $f000 : $f6, $f1
	xce                                                  ; $f002 : $fb
	sbc ($00), Y                                                  ; $f003 : $f1, $00
	sbc ($05)                                                  ; $f005 : $f2, $05
	sbc ($14)                                                  ; $f007 : $f2, $14
	sbc ($0a)                                                  ; $f009 : $f2, $0a
	sbc ($0f)                                                  ; $f00b : $f2, $0f
	sbc ($f6)                                                  ; $f00d : $f2, $f6
	sbc ($f6), Y                                                  ; $f00f : $f1, $f6
	sbc ($f6), Y                                                  ; $f011 : $f1, $f6
	sbc ($ef), Y                                                  ; $f013 : $f1, $ef
	sbc ($f4, S), Y                                                  ; $f015 : $f3, $f4
	sbc ($f9, S), Y                                                  ; $f017 : $f3, $f9
	sbc ($fe, S), Y                                                  ; $f019 : $f3, $fe
	sbc ($03, S), Y                                                  ; $f01b : $f3, $03
	pea $f408.w                                                  ; $f01d : $f4, $08, $f4
	ora $12f4.w                                                  ; $f020 : $0d, $f4, $12
	pea $f417.w                                                  ; $f023 : $f4, $17, $f4
	trb $21f4.w                                                  ; $f026 : $1c, $f4, $21
	pea $f426.w                                                  ; $f029 : $f4, $26, $f4
	pld                                                  ; $f02c : $2b
	pea $f430.w                                                  ; $f02d : $f4, $30, $f4
	and $f4, X                                                  ; $f030 : $35, $f4
	dea                                                  ; $f032 : $3a
	pea $f43f.w                                                  ; $f033 : $f4, $3f, $f4
	mvp $49, $f4                                                  ; $f036 : $44, $f4, $49
	pea $f219.w                                                  ; $f039 : $f4, $19, $f2
	asl $23f2.w, X                                                  ; $f03c : $1e, $f2, $23
	sbc ($28)                                                  ; $f03f : $f2, $28
	sbc ($2d)                                                  ; $f041 : $f2, $2d
	sbc ($32)                                                  ; $f043 : $f2, $32
	sbc ($37)                                                  ; $f045 : $f2, $37
	sbc ($3c)                                                  ; $f047 : $f2, $3c
	sbc ($41)                                                  ; $f049 : $f2, $41
	sbc ($34)                                                  ; $f04b : $f2, $34
	sbc $46, X                                                  ; $f04d : $f5, $46
	sbc ($34)                                                  ; $f04f : $f2, $34
	sbc $4b, X                                                  ; $f051 : $f5, $4b
	sbc ($50)                                                  ; $f053 : $f2, $50
	sbc ($55)                                                  ; $f055 : $f2, $55
	sbc ($34)                                                  ; $f057 : $f2, $34
	sbc $34, X                                                  ; $f059 : $f5, $34
	sbc $34, X                                                  ; $f05b : $f5, $34
	sbc $5a, X                                                  ; $f05d : $f5, $5a
	sbc ($5f)                                                  ; $f05f : $f2, $5f
	sbc ($64)                                                  ; $f061 : $f2, $64
	sbc ($69)                                                  ; $f063 : $f2, $69
	sbc ($6e)                                                  ; $f065 : $f2, $6e
	sbc ($73)                                                  ; $f067 : $f2, $73
	sbc ($78)                                                  ; $f069 : $f2, $78
	sbc ($7d)                                                  ; $f06b : $f2, $7d
	sbc ($82)                                                  ; $f06d : $f2, $82
	sbc ($87)                                                  ; $f06f : $f2, $87
	sbc ($8c)                                                  ; $f071 : $f2, $8c
	sbc ($91)                                                  ; $f073 : $f2, $91
	sbc ($96)                                                  ; $f075 : $f2, $96
	sbc ($9b)                                                  ; $f077 : $f2, $9b
	sbc ($a0)                                                  ; $f079 : $f2, $a0
	sbc ($a5)                                                  ; $f07b : $f2, $a5
	sbc ($aa)                                                  ; $f07d : $f2, $aa
	sbc ($af)                                                  ; $f07f : $f2, $af
	sbc ($b4)                                                  ; $f081 : $f2, $b4
	sbc ($b9)                                                  ; $f083 : $f2, $b9
	sbc ($be)                                                  ; $f085 : $f2, $be
	sbc ($c3)                                                  ; $f087 : $f2, $c3
	sbc ($c8)                                                  ; $f089 : $f2, $c8
	sbc ($cd)                                                  ; $f08b : $f2, $cd
	sbc ($d2)                                                  ; $f08d : $f2, $d2
	sbc ($d7)                                                  ; $f08f : $f2, $d7
	sbc ($dc)                                                  ; $f091 : $f2, $dc
	sbc ($e1)                                                  ; $f093 : $f2, $e1
	sbc ($e6)                                                  ; $f095 : $f2, $e6
	sbc ($eb)                                                  ; $f097 : $f2, $eb
	sbc ($f0)                                                  ; $f099 : $f2, $f0
	sbc ($f5)                                                  ; $f09b : $f2, $f5
	sbc ($fa)                                                  ; $f09d : $f2, $fa
	sbc ($ff)                                                  ; $f09f : $f2, $ff
	sbc ($04)                                                  ; $f0a1 : $f2, $04
	sbc ($09, S), Y                                                  ; $f0a3 : $f3, $09
	sbc ($0e, S), Y                                                  ; $f0a5 : $f3, $0e
	sbc ($13, S), Y                                                  ; $f0a7 : $f3, $13
	sbc ($18, S), Y                                                  ; $f0a9 : $f3, $18
	sbc ($1d, S), Y                                                  ; $f0ab : $f3, $1d
	sbc ($22, S), Y                                                  ; $f0ad : $f3, $22
	sbc ($27, S), Y                                                  ; $f0af : $f3, $27
	sbc ($2c, S), Y                                                  ; $f0b1 : $f3, $2c
	sbc ($31, S), Y                                                  ; $f0b3 : $f3, $31
	sbc ($36, S), Y                                                  ; $f0b5 : $f3, $36
	sbc ($3b, S), Y                                                  ; $f0b7 : $f3, $3b
	sbc ($40, S), Y                                                  ; $f0b9 : $f3, $40
	sbc ($45, S), Y                                                  ; $f0bb : $f3, $45
	sbc ($4a, S), Y                                                  ; $f0bd : $f3, $4a
	sbc ($4f, S), Y                                                  ; $f0bf : $f3, $4f
	sbc ($54, S), Y                                                  ; $f0c1 : $f3, $54
	sbc ($59, S), Y                                                  ; $f0c3 : $f3, $59
	sbc ($5e, S), Y                                                  ; $f0c5 : $f3, $5e
	sbc ($63, S), Y                                                  ; $f0c7 : $f3, $63
	sbc ($68, S), Y                                                  ; $f0c9 : $f3, $68
	sbc ($6d, S), Y                                                  ; $f0cb : $f3, $6d
	sbc ($72, S), Y                                                  ; $f0cd : $f3, $72
	sbc ($77, S), Y                                                  ; $f0cf : $f3, $77
	sbc ($7c, S), Y                                                  ; $f0d1 : $f3, $7c
	sbc ($81, S), Y                                                  ; $f0d3 : $f3, $81
	sbc ($86, S), Y                                                  ; $f0d5 : $f3, $86
	sbc ($8b, S), Y                                                  ; $f0d7 : $f3, $8b
	sbc ($90, S), Y                                                  ; $f0d9 : $f3, $90
	sbc ($95, S), Y                                                  ; $f0db : $f3, $95
	sbc ($9a, S), Y                                                  ; $f0dd : $f3, $9a
	sbc ($9f, S), Y                                                  ; $f0df : $f3, $9f
	sbc ($a4, S), Y                                                  ; $f0e1 : $f3, $a4
	sbc ($a9, S), Y                                                  ; $f0e3 : $f3, $a9
	sbc ($ae, S), Y                                                  ; $f0e5 : $f3, $ae
	sbc ($b3, S), Y                                                  ; $f0e7 : $f3, $b3
	sbc ($b8, S), Y                                                  ; $f0e9 : $f3, $b8
	sbc ($bd, S), Y                                                  ; $f0eb : $f3, $bd
	sbc ($c2, S), Y                                                  ; $f0ed : $f3, $c2
	sbc ($c7, S), Y                                                  ; $f0ef : $f3, $c7
	sbc ($cc, S), Y                                                  ; $f0f1 : $f3, $cc
	sbc ($d1, S), Y                                                  ; $f0f3 : $f3, $d1
	sbc ($d6, S), Y                                                  ; $f0f5 : $f3, $d6
	sbc ($db, S), Y                                                  ; $f0f7 : $f3, $db
	sbc ($e0, S), Y                                                  ; $f0f9 : $f3, $e0
	sbc ($e5, S), Y                                                  ; $f0fb : $f3, $e5
	sbc ($ea, S), Y                                                  ; $f0fd : $f3, $ea
	sbc ($80, S), Y                                                  ; $f0ff : $f3, $80
	pea $f485.w                                                  ; $f101 : $f4, $85, $f4
	txa                                                  ; $f104 : $8a
	pea $f48f.w                                                  ; $f105 : $f4, $8f, $f4
	sty $f4, X                                                  ; $f108 : $94, $f4
	sta $9ef4.w, Y                                                  ; $f10a : $99, $f4, $9e
	pea $f4a3.w                                                  ; $f10d : $f4, $a3, $f4
	tay                                                  ; $f110 : $a8
	pea $f4ad.w                                                  ; $f111 : $f4, $ad, $f4
	lda ($f4)                                                  ; $f114 : $b2, $f4
	lda [$f4], Y                                                  ; $f116 : $b7, $f4
	ldy $c1f4.w, X                                                  ; $f118 : $bc, $f4, $c1
	pea $f4c6.w                                                  ; $f11b : $f4, $c6, $f4
	wai                                                  ; $f11e : $cb
	pea $f4d0.w                                                  ; $f11f : $f4, $d0, $f4
	cmp $f4, X                                                  ; $f122 : $d5, $f4
	phx                                                  ; $f124 : $da
	pea $f4df.w                                                  ; $f125 : $f4, $df, $f4
	cpx $f4                                                  ; $f128 : $e4, $f4
	sbc #$f4.b                                                  ; $f12a : $e9, $f4
	inc $f3f4.w                                                  ; $f12c : $ee, $f4, $f3
	pea $f4f8.w                                                  ; $f12f : $f4, $f8, $f4
	sbc $02f4.w, X                                                  ; $f132 : $fd, $f4, $02
	sbc $07, X                                                  ; $f135 : $f5, $07
	sbc $0c, X                                                  ; $f137 : $f5, $0c
	sbc $11, X                                                  ; $f139 : $f5, $11
	sbc $16, X                                                  ; $f13b : $f5, $16
	sbc $1b, X                                                  ; $f13d : $f5, $1b
	sbc $20, X                                                  ; $f13f : $f5, $20
	sbc $25, X                                                  ; $f141 : $f5, $25
	sbc $2a, X                                                  ; $f143 : $f5, $2a
	sbc $2f, X                                                  ; $f145 : $f5, $2f
	sbc $34, X                                                  ; $f147 : $f5, $34
	sbc $39, X                                                  ; $f149 : $f5, $39
	sbc $3e, X                                                  ; $f14b : $f5, $3e
	sbc $43, X                                                  ; $f14d : $f5, $43
	sbc $48, X                                                  ; $f14f : $f5, $48
	sbc $4d, X                                                  ; $f151 : $f5, $4d
	sbc $52, X                                                  ; $f153 : $f5, $52
	sbc $57, X                                                  ; $f155 : $f5, $57
	sbc $5c, X                                                  ; $f157 : $f5, $5c
	sbc $61, X                                                  ; $f159 : $f5, $61
	sbc $66, X                                                  ; $f15b : $f5, $66
	sbc $6b, X                                                  ; $f15d : $f5, $6b
	sbc $70, X                                                  ; $f15f : $f5, $70
	sbc $75, X                                                  ; $f161 : $f5, $75
	sbc $7a, X                                                  ; $f163 : $f5, $7a
	sbc $7f, X                                                  ; $f165 : $f5, $7f
	sbc $84, X                                                  ; $f167 : $f5, $84
	sbc $89, X                                                  ; $f169 : $f5, $89
	sbc $8e, X                                                  ; $f16b : $f5, $8e
	sbc $93, X                                                  ; $f16d : $f5, $93
	sbc $98, X                                                  ; $f16f : $f5, $98
	sbc $9d, X                                                  ; $f171 : $f5, $9d
	sbc $a2, X                                                  ; $f173 : $f5, $a2
	sbc $a7, X                                                  ; $f175 : $f5, $a7
	sbc $ac, X                                                  ; $f177 : $f5, $ac
	sbc $b1, X                                                  ; $f179 : $f5, $b1
	sbc $b6, X                                                  ; $f17b : $f5, $b6
	sbc $bb, X                                                  ; $f17d : $f5, $bb
	sbc $c0, X                                                  ; $f17f : $f5, $c0
	sbc $c5, X                                                  ; $f181 : $f5, $c5
	sbc $ca, X                                                  ; $f183 : $f5, $ca
	sbc $cf, X                                                  ; $f185 : $f5, $cf
	sbc $d4, X                                                  ; $f187 : $f5, $d4
	sbc $d9, X                                                  ; $f189 : $f5, $d9
	sbc $de, X                                                  ; $f18b : $f5, $de
	sbc $e3, X                                                  ; $f18d : $f5, $e3
	sbc $e8, X                                                  ; $f18f : $f5, $e8
	sbc $ed, X                                                  ; $f191 : $f5, $ed
	sbc $f2, X                                                  ; $f193 : $f5, $f2
	sbc $f7, X                                                  ; $f195 : $f5, $f7
	sbc $fc, X                                                  ; $f197 : $f5, $fc
	sbc $01, X                                                  ; $f199 : $f5, $01
	inc $06, X                                                  ; $f19b : $f6, $06
	inc $0b, X                                                  ; $f19d : $f6, $0b
	inc $10, X                                                  ; $f19f : $f6, $10
	inc $15, X                                                  ; $f1a1 : $f6, $15
	inc $1a, X                                                  ; $f1a3 : $f6, $1a
	inc $1f, X                                                  ; $f1a5 : $f6, $1f
	inc $24, X                                                  ; $f1a7 : $f6, $24
	inc $29, X                                                  ; $f1a9 : $f6, $29
	inc $2e, X                                                  ; $f1ab : $f6, $2e
	inc $33, X                                                  ; $f1ad : $f6, $33
	inc $38, X                                                  ; $f1af : $f6, $38
	inc $3d, X                                                  ; $f1b1 : $f6, $3d
	inc $42, X                                                  ; $f1b3 : $f6, $42
	inc $47, X                                                  ; $f1b5 : $f6, $47
	inc $4c, X                                                  ; $f1b7 : $f6, $4c
	inc $51, X                                                  ; $f1b9 : $f6, $51
	inc $56, X                                                  ; $f1bb : $f6, $56
	inc $5b, X                                                  ; $f1bd : $f6, $5b
	inc $60, X                                                  ; $f1bf : $f6, $60
	inc $65, X                                                  ; $f1c1 : $f6, $65
	inc $6a, X                                                  ; $f1c3 : $f6, $6a
	inc $6f, X                                                  ; $f1c5 : $f6, $6f
	inc $74, X                                                  ; $f1c7 : $f6, $74
	inc $79, X                                                  ; $f1c9 : $f6, $79
	inc $7e, X                                                  ; $f1cb : $f6, $7e
	inc $83, X                                                  ; $f1cd : $f6, $83
	inc $88, X                                                  ; $f1cf : $f6, $88
	inc $8d, X                                                  ; $f1d1 : $f6, $8d
	inc $92, X                                                  ; $f1d3 : $f6, $92
	inc $97, X                                                  ; $f1d5 : $f6, $97
	inc $9c, X                                                  ; $f1d7 : $f6, $9c
	inc $a1, X                                                  ; $f1d9 : $f6, $a1
	inc $a6, X                                                  ; $f1db : $f6, $a6
	inc $ab, X                                                  ; $f1dd : $f6, $ab
	inc $b0, X                                                  ; $f1df : $f6, $b0
	inc $4e, X                                                  ; $f1e1 : $f6, $4e
	pea $f453.w                                                  ; $f1e3 : $f4, $53, $f4
	cli                                                  ; $f1e6 : $58
	pea $f45d.w                                                  ; $f1e7 : $f4, $5d, $f4
	.db $62                                                  ; $f1ea : $62

	pea $f467.w                                                  ; $f1eb : $f4, $67, $f4
	jmp ($71f4.w)                                                  ; $f1ee : $6c, $f4, $71


	pea $f476.w                                                  ; $f1f1 : $f4, $76, $f4
	tdc                                                  ; $f1f4 : $7b
	pea $0151.w                                                  ; $f1f5 : $f4, $51, $01
	.db $00                                                  ; $f1f8 : $00
	iny                                                  ; $f1f9 : $c8
	sta $0171.w, X                                                  ; $f1fa : $9d, $71, $01
	.db $00                                                  ; $f1fd : $00
	inx                                                  ; $f1fe : $e8

Call_4f_f1ff:
	stz $0231.w                                                  ; $f1ff : $9c, $31, $02
	.db $00                                                  ; $f202 : $00
	tya                                                  ; $f203 : $98
	sta $0151.w, X                                                  ; $f204 : $9d, $51, $01
	jsr $31a1b0.l                                                  ; $f207 : $22, $b0, $a1, $31
	ora ($00, X)                                                  ; $f20b : $01, $00
	.db $b0, $9d                                                  ; $f20d : $b0, $9d

	and ($01), Y                                                  ; $f20f : $31, $01
	jsr $91a1b6.l                                                  ; $f211 : $22, $b6, $a1, $91
	ora ($00, X)                                                  ; $f215 : $01, $00
	.db $80, $9d                                                  ; $f217 : $80, $9d

	eor ($01), Y                                                  ; $f219 : $51, $01
	.db $00                                                  ; $f21b : $00
	dec $519d.w                                                  ; $f21c : $ce, $9d, $51
	ora ($00, X)                                                  ; $f21f : $01, $00
	pei ($9d)                                                  ; $f221 : $d4, $9d
	eor ($01), Y                                                  ; $f223 : $51, $01
	.db $00                                                  ; $f225 : $00
	phx                                                  ; $f226 : $da
	sta $0171.w, X                                                  ; $f227 : $9d, $71, $01
	.db $00                                                  ; $f22a : $00
	inc $719c.w                                                  ; $f22b : $ee, $9c, $71
	ora ($00, X)                                                  ; $f22e : $01, $00
	pea $719c.w                                                  ; $f230 : $f4, $9c, $71
	ora ($00, X)                                                  ; $f233 : $01, $00
	plx                                                  ; $f235 : $fa
	stz $0231.w                                                  ; $f236 : $9c, $31, $02
	.db $00                                                  ; $f239 : $00
	stz $319d.w, X                                                  ; $f23a : $9e, $9d, $31
	cop $00.b                                                  ; $f23d : $02, $00
	ldy $9d                                                  ; $f23f : $a4, $9d
	and ($02), Y                                                  ; $f241 : $31, $02

br_4f_f243:
	.db $00                                                  ; $f243 : $00
	tax                                                  ; $f244 : $aa
	sta $0141.w, X                                                  ; $f245 : $9d, $41, $01
	jsr $a6c0.w                                                  ; $f248 : $20, $c0, $a6
	and ($01), Y                                                  ; $f24b : $31, $01
	.db $00                                                  ; $f24d : $00
	ldx $9d, Y                                                  ; $f24e : $b6, $9d
	and ($01), Y                                                  ; $f250 : $31, $01
	.db $00                                                  ; $f252 : $00
	ldy $319d.w, X                                                  ; $f253 : $bc, $9d, $31
	ora ($00, X)                                                  ; $f256 : $01, $00
	rep #$9d.b                                                  ; $f258 : $c2, $9d
	sta ($01), Y                                                  ; $f25a : $91, $01
	.db $00                                                  ; $f25c : $00
	stx $9d                                                  ; $f25d : $86, $9d
	sta ($01), Y                                                  ; $f25f : $91, $01
	.db $00                                                  ; $f261 : $00
	sty $919d.w                                                  ; $f262 : $8c, $9d, $91
	ora ($00, X)                                                  ; $f265 : $01, $00
	sta ($9d)                                                  ; $f267 : $92, $9d
	and ($01), Y                                                  ; $f269 : $31, $01

br_4f_f26b:
	.db $00                                                  ; $f26b : $00
	rep #$a4.b                                                  ; $f26c : $c2, $a4
	eor ($01), Y                                                  ; $f26e : $51, $01
	.db $00                                                  ; $f270 : $00
	iny                                                  ; $f271 : $c8
	sta $0271.w, X                                                  ; $f272 : $9d, $71, $02
	.db $00                                                  ; $f275 : $00
	pei ($a4)                                                  ; $f276 : $d4, $a4
	sta ($02), Y                                                  ; $f278 : $91, $02
	.db $00                                                  ; $f27a : $00
	phx                                                  ; $f27b : $da
	ldy $91                                                  ; $f27c : $a4, $91
	cop $00.b                                                  ; $f27e : $02, $00
	cpx #$b1a4.w                                                  ; $f280 : $e0, $a4, $b1
	cop $00.b                                                  ; $f283 : $02, $00
	inc $a4                                                  ; $f285 : $e6, $a4
	eor ($01), Y                                                  ; $f287 : $51, $01
	.db $00                                                  ; $f289 : $00
	inc $a2                                                  ; $f28a : $e6, $a2
	adc ($01), Y                                                  ; $f28c : $71, $01
	.db $00                                                  ; $f28e : $00
	cpx $51a2.w                                                  ; $f28f : $ec, $a2, $51
	.db $00                                                  ; $f292 : $00
	.db $00                                                  ; $f293 : $00
	sbc ($a2)                                                  ; $f294 : $f2, $a2
	sta ($00), Y                                                  ; $f296 : $91, $00
	.db $00                                                  ; $f298 : $00
	sed                                                  ; $f299 : $f8
	ldx #$0151.w                                                  ; $f29a : $a2, $51, $01
	.db $00                                                  ; $f29d : $00
	bra br_4f_f243                                                  ; $f29e : $80, $a3

	lda ($02), Y                                                  ; $f2a0 : $b1, $02
	.db $00                                                  ; $f2a2 : $00
	stx $a3                                                  ; $f2a3 : $86, $a3
	adc ($02), Y                                                  ; $f2a5 : $71, $02
	.db $00                                                  ; $f2a7 : $00
	sty $91a3.w                                                  ; $f2a8 : $8c, $a3, $91
	cop $00.b                                                  ; $f2ab : $02, $00
	sta ($a3)                                                  ; $f2ad : $92, $a3
	adc ($02), Y                                                  ; $f2af : $71, $02
	.db $00                                                  ; $f2b1 : $00
	tya                                                  ; $f2b2 : $98
	lda $91, S                                                  ; $f2b3 : $a3, $91
	.db $00                                                  ; $f2b5 : $00
	.db $00                                                  ; $f2b6 : $00
	stz $91a3.w, X                                                  ; $f2b7 : $9e, $a3, $91
	ora ($00, X)                                                  ; $f2ba : $01, $00
	ldy $a3                                                  ; $f2bc : $a4, $a3
	adc ($01), Y                                                  ; $f2be : $71, $01
	.db $00                                                  ; $f2c0 : $00
	tax                                                  ; $f2c1 : $aa
	lda $71, S                                                  ; $f2c2 : $a3, $71
	ora ($00, X)                                                  ; $f2c4 : $01, $00
	bcs br_4f_f26b                                                  ; $f2c6 : $b0, $a3

	adc ($01), Y                                                  ; $f2c8 : $71, $01
	.db $00                                                  ; $f2ca : $00
	ldx $a3, Y                                                  ; $f2cb : $b6, $a3
	eor $01, S                                                  ; $f2cd : $43, $01
	jsr ($a5fd.w, X)                                                  ; $f2cf : $fc, $fd, $a5
	pld                                                  ; $f2d2 : $2b
	.db $00                                                  ; $f2d3 : $00
	.db $00                                                  ; $f2d4 : $00
	tyx                                                  ; $f2d5 : $bb
	lda $00                                                  ; $f2d6 : $a5, $00
	ora ($70, X)                                                  ; $f2d8 : $01, $70
	sbc $00139a.l, X                                                  ; $f2da : $ff, $9a, $13, $00
	.db $00                                                  ; $f2de : $00
	ldy $21a0.w, X                                                  ; $f2df : $bc, $a0, $21
	cop $20.b                                                  ; $f2e2 : $02, $20
	cmp [$a6], Y                                                  ; $f2e4 : $d7, $a6
	jsr $6c06.w                                                  ; $f2e6 : $20, $06, $6c
	plx                                                  ; $f2e9 : $fa
	sta $070b.w, Y                                                  ; $f2ea : $99, $0b, $07
	.db $00                                                  ; $f2ed : $00
	lda $0100a5.l, X                                                  ; $f2ee : $bf, $a5, $00, $01
	tdc                                                  ; $f2f2 : $7b
	sbc $07239e.l, X                                                  ; $f2f3 : $ff, $9e, $23, $07
	.db $00                                                  ; $f2f7 : $00
	ldy #$71a6.w                                                  ; $f2f8 : $a0, $a6, $71
	ora ($00, X)                                                  ; $f2fb : $01, $00
	sta [$a5], Y                                                  ; $f2fd : $97, $a5
	sta ($01), Y                                                  ; $f2ff : $91, $01
	.db $00                                                  ; $f301 : $00
	txy                                                  ; $f302 : $9b
	lda $81                                                  ; $f303 : $a5, $81
	.db $00                                                  ; $f305 : $00
	jsr $a6d4.w                                                  ; $f306 : $20, $d4, $a6
	sta ($01, X)                                                  ; $f309 : $81, $01
	jsr $a6c5.w                                                  ; $f30b : $20, $c5, $a6
	eor ($02, X)                                                  ; $f30e : $41, $02
	jsr $a6c6.w                                                  ; $f310 : $20, $c6, $a6
	adc ($01, X)                                                  ; $f313 : $61, $01
	jsr $a6c7.w                                                  ; $f315 : $20, $c7, $a6
	adc ($01, X)                                                  ; $f318 : $61, $01
	jsr $a6d9.w                                                  ; $f31a : $20, $d9, $a6
	sta ($02, X)                                                  ; $f31d : $81, $02
	jsr $a6da.w                                                  ; $f31f : $20, $da, $a6
	eor #$0001.w                                                  ; $f322 : $49, $01, $00
	ldx #$71a6.w                                                  ; $f325 : $a2, $a6, $71
	ora ($00, X)                                                  ; $f328 : $01, $00
	rep #$a3.b                                                  ; $f32a : $c2, $a3
	ora #$0006.w                                                  ; $f32c : $09, $06, $00
	tay                                                  ; $f32f : $a8
	ldx $a1                                                  ; $f330 : $a6, $a1
	cop $20.b                                                  ; $f332 : $02, $20
	cmp $a6, X                                                  ; $f334 : $d5, $a6
	lda ($02, X)                                                  ; $f336 : $a1, $02
	jsr $a6d6.w                                                  ; $f338 : $20, $d6, $a6
	ora ($00, X)                                                  ; $f33b : $01, $00
	jsr $a6d8.w                                                  ; $f33d : $20, $d8, $a6
	sta ($01, X)                                                  ; $f340 : $81, $01
	jsr $a6db.w                                                  ; $f342 : $20, $db, $a6

br_4f_f345:
	ora ($02, X)                                                  ; $f345 : $01, $02
	jsr $a6dc.w                                                  ; $f347 : $20, $dc, $a6
	ldy #$0d01.w                                                  ; $f34a : $a0, $01, $0d
	inc $a6, X                                                  ; $f34d : $f6, $a6
	adc #$0002.w                                                  ; $f34f : $69, $02, $00
	ldy $a6                                                  ; $f352 : $a4, $a6
	and ($01, X)                                                  ; $f354 : $21, $01
	jsr $a6dd.w                                                  ; $f356 : $20, $dd, $a6
	plp                                                  ; $f359 : $28
	.db $00                                                  ; $f35a : $00
	jsr $a6de.w                                                  ; $f35b : $20, $de, $a6
	and $00, S                                                  ; $f35e : $23, $00
	.db $00                                                  ; $f360 : $00
	ldx $a6                                                  ; $f361 : $a6, $a6
	plp                                                  ; $f363 : $28
	cop $20.b                                                  ; $f364 : $02, $20
	cmp $0220a6.l, X                                                  ; $f366 : $df, $a6, $20, $02
	sta $a6f6.w                                                  ; $f36a : $8d, $f6, $a6
	jsr $0d01.w                                                  ; $f36d : $20, $01, $0d
	sbc [$a6], Y                                                  ; $f370 : $f7, $a6
	jsr $8d01.w                                                  ; $f372 : $20, $01, $8d
	sbc [$a6], Y                                                  ; $f375 : $f7, $a6
	adc ($01, X)                                                  ; $f377 : $61, $01
	jsr $a6c1.w                                                  ; $f379 : $20, $c1, $a6
	sta ($01, X)                                                  ; $f37c : $81, $01
	jsr $a6c3.w                                                  ; $f37e : $20, $c3, $a6
	adc ($01, X)                                                  ; $f381 : $61, $01
	jsr $a6c2.w                                                  ; $f383 : $20, $c2, $a6
	sta ($01, X)                                                  ; $f386 : $81, $01
	jsr $a6c4.w                                                  ; $f388 : $20, $c4, $a6
	jsr $0d01.w                                                  ; $f38b : $20, $01, $0d
	sed                                                  ; $f38e : $f8
	ldx $51                                                  ; $f38f : $a6, $51
	ora ($00, X)                                                  ; $f391 : $01, $00
	iny                                                  ; $f393 : $c8
	lda $71, S                                                  ; $f394 : $a3, $71
	.db $00                                                  ; $f396 : $00
	.db $00                                                  ; $f397 : $00
	iny                                                  ; $f398 : $c8
	ldy $91                                                  ; $f399 : $a4, $91
	ora ($00, X)                                                  ; $f39b : $01, $00
	dec $00a4.w                                                  ; $f39d : $ce, $a4, $00
	.db $00                                                  ; $f3a0 : $00
	sta $a6f8.w                                                  ; $f3a1 : $8d, $f8, $a6
	ora ($00, S), Y                                                  ; $f3a4 : $13, $00
	.db $00                                                  ; $f3a6 : $00
	bra br_4f_f345                                                  ; $f3a7 : $80, $9c

	ora ($00, S), Y                                                  ; $f3a9 : $13, $00
	.db $00                                                  ; $f3ab : $00
	sty $139c.w                                                  ; $f3ac : $8c, $9c, $13
	.db $00                                                  ; $f3af : $00
	.db $00                                                  ; $f3b0 : $00
	tya                                                  ; $f3b1 : $98
	stz $0051.w                                                  ; $f3b2 : $9c, $51, $00
	.db $00                                                  ; $f3b5 : $00
	sbc ($a4)                                                  ; $f3b6 : $f2, $a4
	eor ($00), Y                                                  ; $f3b8 : $51, $00
	.db $00                                                  ; $f3ba : $00
	sed                                                  ; $f3bb : $f8
	ldy $71                                                  ; $f3bc : $a4, $71
	ora ($00, X)                                                  ; $f3be : $01, $00

br_4f_f3c0:
	.db $80, $a5                                                  ; $f3c0 : $80, $a5

	adc ($01), Y                                                  ; $f3c2 : $71, $01
	.db $00                                                  ; $f3c4 : $00
	stx $a5                                                  ; $f3c5 : $86, $a5
	eor ($03), Y                                                  ; $f3c7 : $51, $03
	.db $00                                                  ; $f3c9 : $00
	sty $53a5.w                                                  ; $f3ca : $8c, $a5, $53
	cop $00.b                                                  ; $f3cd : $02, $00
	iny                                                  ; $f3cf : $c8
	ldy #$0133.w                                                  ; $f3d0 : $a0, $33, $01
	.db $00                                                  ; $f3d3 : $00
	pei ($a0)                                                  ; $f3d4 : $d4, $a0
	ora ($00, S), Y                                                  ; $f3d6 : $13, $00
	.db $00                                                  ; $f3d8 : $00
	cpx #$93a0.w                                                  ; $f3d9 : $e0, $a0, $93
	ora ($00, X)                                                  ; $f3dc : $01, $00
	cpx $80a0.w                                                  ; $f3de : $ec, $a0, $80
	ora ($0d, X)                                                  ; $f3e1 : $01, $0d
	sbc $00a6.w, Y                                                  ; $f3e3 : $f9, $a6, $00
	asl $80                                                  ; $f3e6 : $06, $80

br_4f_f3e8:
	lda $02009f.l                                                  ; $f3e8 : $af, $9f, $00, $02
	sta $a6f9.w                                                  ; $f3ec : $8d, $f9, $a6
	sta ($01), Y                                                  ; $f3ef : $91, $01
	.db $00                                                  ; $f3f1 : $00
	dec $b1a3.w                                                  ; $f3f2 : $ce, $a3, $b1
	ora ($00, X)                                                  ; $f3f5 : $01, $00
	pei ($a3)                                                  ; $f3f7 : $d4, $a3
	adc ($01), Y                                                  ; $f3f9 : $71, $01
	.db $00                                                  ; $f3fb : $00
	phx                                                  ; $f3fc : $da
	lda $91, S                                                  ; $f3fd : $a3, $91
	cop $00.b                                                  ; $f3ff : $02, $00
	cpx #$51a3.w                                                  ; $f401 : $e0, $a3, $51
	cop $00.b                                                  ; $f404 : $02, $00
	inc $a3                                                  ; $f406 : $e6, $a3
	eor ($02), Y                                                  ; $f408 : $51, $02
	.db $00                                                  ; $f40a : $00
	cpx $11a3.w                                                  ; $f40b : $ec, $a3, $11
	cop $00.b                                                  ; $f40e : $02, $00
	sbc ($a3)                                                  ; $f410 : $f2, $a3
	and ($01), Y                                                  ; $f412 : $31, $01
	.db $00                                                  ; $f414 : $00
	sed                                                  ; $f415 : $f8
	lda $11, S                                                  ; $f416 : $a3, $11
	ora ($00, X)                                                  ; $f418 : $01, $00
	bra br_4f_f3c0                                                  ; $f41a : $80, $a4

	adc ($01), Y                                                  ; $f41c : $71, $01
	.db $00                                                  ; $f41e : $00
	stx $a4                                                  ; $f41f : $86, $a4
	adc ($02), Y                                                  ; $f421 : $71, $02
	.db $00                                                  ; $f423 : $00
	sty $91a4.w                                                  ; $f424 : $8c, $a4, $91
	.db $00                                                  ; $f427 : $00
	.db $00                                                  ; $f428 : $00
	sta ($a4)                                                  ; $f429 : $92, $a4
	and ($00), Y                                                  ; $f42b : $31, $00
	.db $00                                                  ; $f42d : $00
	tya                                                  ; $f42e : $98
	ldy $91                                                  ; $f42f : $a4, $91
	.db $00                                                  ; $f431 : $00
	.db $00                                                  ; $f432 : $00
	stz $11a4.w, X                                                  ; $f433 : $9e, $a4, $11
	ora ($00, X)                                                  ; $f436 : $01, $00
	ldy $a4                                                  ; $f438 : $a4, $a4
	eor ($01), Y                                                  ; $f43a : $51, $01
	.db $00                                                  ; $f43c : $00
	tax                                                  ; $f43d : $aa
	ldy $51                                                  ; $f43e : $a4, $51
	ora ($00, X)                                                  ; $f440 : $01, $00
	bcs br_4f_f3e8                                                  ; $f442 : $b0, $a4

	eor ($00), Y                                                  ; $f444 : $51, $00
	.db $00                                                  ; $f446 : $00
	ldx $a4, Y                                                  ; $f447 : $b6, $a4
	lda ($00), Y                                                  ; $f449 : $b1, $00
	.db $00                                                  ; $f44b : $00
	ldy $00a4.w, X                                                  ; $f44c : $bc, $a4, $00
	asl $80                                                  ; $f44f : $06, $80
	lda #$009f.w                                                  ; $f451 : $a9, $9f, $00
	asl $80                                                  ; $f454 : $06, $80
	tax                                                  ; $f456 : $aa
	sta $000600.l, X                                                  ; $f457 : $9f, $00, $06, $00
	plb                                                  ; $f45b : $ab
	sta $000600.l, X                                                  ; $f45c : $9f, $00, $06, $00
	tax                                                  ; $f460 : $aa
	sta $000600.l, X                                                  ; $f461 : $9f, $00, $06, $00
	ldy $009f.w                                                  ; $f465 : $ac, $9f, $00
	asl $80                                                  ; $f468 : $06, $80
	lda $06009f.l                                                  ; $f46a : $af, $9f, $00, $06
	.db $00                                                  ; $f46e : $00
	ldx $009f.w                                                  ; $f46f : $ae, $9f, $00
	asl $00                                                  ; $f472 : $06, $00
	ldy $9f, X                                                  ; $f474 : $b4, $9f
	.db $00                                                  ; $f476 : $00
	asl $80                                                  ; $f477 : $06, $80
	lda $039f.w, Y                                                  ; $f479 : $b9, $9f, $03
	.db $00                                                  ; $f47c : $00
	.db $00                                                  ; $f47d : $00
	ldx $10a6.w                                                  ; $f47e : $ae, $a6, $10
	ora ($fc, X)                                                  ; $f481 : $01, $fc
	sbc $a5                                                  ; $f483 : $e5, $a5
	.db $10, $01                                                  ; $f485 : $10, $01

	jsr ($a5e8.w, X)                                                  ; $f487 : $fc, $e8, $a5
	ora ($05), Y                                                  ; $f48a : $11, $05
	.db $00                                                  ; $f48c : $00
	phx                                                  ; $f48d : $da
	ldx #$0510.w                                                  ; $f48e : $a2, $10, $05
	jsr ($a5ee.w, X)                                                  ; $f491 : $fc, $ee, $a5
	.db $10, $04                                                  ; $f494 : $10, $04

	jsr ($a5f1.w, X)                                                  ; $f496 : $fc, $f1, $a5
	.db $10, $01                                                  ; $f499 : $10, $01

	jsr ($a5f4.w, X)                                                  ; $f49b : $fc, $f4, $a5
	.db $10, $04                                                  ; $f49e : $10, $04

	jsr ($a5f7.w, X)                                                  ; $f4a0 : $fc, $f7, $a5
	bpl br_4f_f4a8                                                  ; $f4a3 : $10, $03

	jsr ($a5fa.w, X)                                                  ; $f4a5 : $fc, $fa, $a5

br_4f_f4a8:
	bpl br_4f_f4ad                                                  ; $f4a8 : $10, $03

	.db $00                                                  ; $f4aa : $00
	.db $80, $a6                                                  ; $f4ab : $80, $a6

br_4f_f4ad:
	bpl br_4f_f4b2                                                  ; $f4ad : $10, $03

	.db $00                                                  ; $f4af : $00
	sta $a6, S                                                  ; $f4b0 : $83, $a6

br_4f_f4b2:
	bpl br_4f_f4b7                                                  ; $f4b2 : $10, $03

	.db $00                                                  ; $f4b4 : $00
	stx $a6                                                  ; $f4b5 : $86, $a6

br_4f_f4b7:
	.db $10, $03                                                  ; $f4b7 : $10, $03

	.db $00                                                  ; $f4b9 : $00
	bit #$10a6.w                                                  ; $f4ba : $89, $a6, $10
	ora $00, S                                                  ; $f4bd : $03, $00
	sty $11a6.w                                                  ; $f4bf : $8c, $a6, $11
	ora $00, S                                                  ; $f4c2 : $03, $00
	pei ($a2)                                                  ; $f4c4 : $d4, $a2
	php                                                  ; $f4c6 : $08
	tsb $20                                                  ; $f4c7 : $04, $20
	iny                                                  ; $f4c9 : $c8
	ldx $08                                                  ; $f4ca : $a6, $08
	ora $20, S                                                  ; $f4cc : $03, $20
	cmp #$08a6.w                                                  ; $f4ce : $c9, $a6, $08
	cop $20.b                                                  ; $f4d1 : $02, $20
	dex                                                  ; $f4d3 : $ca
	ldx $08                                                  ; $f4d4 : $a6, $08
	ora $20, S                                                  ; $f4d6 : $03, $20
	wai                                                  ; $f4d8 : $cb
	ldx $08                                                  ; $f4d9 : $a6, $08
	ora ($20, X)                                                  ; $f4db : $01, $20
	cpy $08a6.w                                                  ; $f4dd : $cc, $a6, $08
	tsb $20                                                  ; $f4e0 : $04, $20
	cmp $08a6.w                                                  ; $f4e2 : $cd, $a6, $08

br_4f_f4e5:
	ora $20, S                                                  ; $f4e5 : $03, $20
	dec $08a6.w                                                  ; $f4e7 : $ce, $a6, $08
	ora $20, S                                                  ; $f4ea : $03, $20
	cmp $0508a6.l                                                  ; $f4ec : $cf, $a6, $08, $05
	jsr $a6d0.w                                                  ; $f4f0 : $20, $d0, $a6
	php                                                  ; $f4f3 : $08
	tsb $20                                                  ; $f4f4 : $04, $20
	cmp ($a6), Y                                                  ; $f4f6 : $d1, $a6
	php                                                  ; $f4f8 : $08
	tsb $20                                                  ; $f4f9 : $04, $20
	cmp ($a6)                                                  ; $f4fb : $d2, $a6
	bpl br_4f_f503                                                  ; $f4fd : $10, $04

	jsr ($a5eb.w, X)                                                  ; $f4ff : $fc, $eb, $a5
	php                                                  ; $f502 : $08

br_4f_f503:
	tsb $20                                                  ; $f503 : $04, $20
	cmp ($a6, S), Y                                                  ; $f505 : $d3, $a6
	ora ($00), Y                                                  ; $f507 : $11, $00
	jsr $11a1bc.l                                                  ; $f509 : $22, $bc, $a1, $11

br_4f_f50d:
	cop $22.b                                                  ; $f50d : $02, $22
	rep #$a1.b                                                  ; $f50f : $c2, $a1
	ora ($01), Y                                                  ; $f511 : $11, $01
	jsr $11a1c8.l                                                  ; $f513 : $22, $c8, $a1, $11
	ora ($22, X)                                                  ; $f517 : $01, $22
	dec $11a1.w                                                  ; $f519 : $ce, $a1, $11
	ora $22, S                                                  ; $f51c : $03, $22
	pei ($a1)                                                  ; $f51e : $d4, $a1
	ora ($03), Y                                                  ; $f520 : $11, $03
	jsr $11a1da.l                                                  ; $f522 : $22, $da, $a1, $11
	ora $22                                                  ; $f526 : $05, $22
	cpx #$11a1.w                                                  ; $f528 : $e0, $a1, $11
	tsb $22                                                  ; $f52b : $04, $22
	inc $a1                                                  ; $f52d : $e6, $a1
	ora ($05), Y                                                  ; $f52f : $11, $05
	jsr $11a1ec.l                                                  ; $f531 : $22, $ec, $a1, $11
	ora $22, S                                                  ; $f535 : $03, $22
	sbc ($a1)                                                  ; $f537 : $f2, $a1
	ora ($01), Y                                                  ; $f539 : $11, $01
	jsr $11a1f8.l                                                  ; $f53b : $22, $f8, $a1, $11
	ora ($00, X)                                                  ; $f53f : $01, $00
	bra br_4f_f4e5                                                  ; $f541 : $80, $a2

	ora ($05), Y                                                  ; $f543 : $11, $05
	.db $00                                                  ; $f545 : $00
	stx $a2                                                  ; $f546 : $86, $a2
	ora ($03), Y                                                  ; $f548 : $11, $03
	.db $00                                                  ; $f54a : $00
	sty $11a2.w                                                  ; $f54b : $8c, $a2, $11
	ora $00                                                  ; $f54e : $05, $00
	sta ($a2)                                                  ; $f550 : $92, $a2
	ora ($04), Y                                                  ; $f552 : $11, $04
	.db $00                                                  ; $f554 : $00
	tya                                                  ; $f555 : $98
	ldx #$0511.w                                                  ; $f556 : $a2, $11, $05
	.db $00                                                  ; $f559 : $00
	stz $11a2.w, X                                                  ; $f55a : $9e, $a2, $11
	tsb $00                                                  ; $f55d : $04, $00
	ldy $a2                                                  ; $f55f : $a4, $a2
	ora ($04), Y                                                  ; $f561 : $11, $04
	.db $00                                                  ; $f563 : $00
	tax                                                  ; $f564 : $aa
	ldx #$0111.w                                                  ; $f565 : $a2, $11, $01
	.db $00                                                  ; $f568 : $00
	bcs br_4f_f50d                                                  ; $f569 : $b0, $a2

	ora ($04), Y                                                  ; $f56b : $11, $04
	.db $00                                                  ; $f56d : $00
	ldx $a2, Y                                                  ; $f56e : $b6, $a2
	ora ($03), Y                                                  ; $f570 : $11, $03
	.db $00                                                  ; $f572 : $00
	ldy $11a2.w, X                                                  ; $f573 : $bc, $a2, $11
	ora $00, S                                                  ; $f576 : $03, $00
	rep #$a2.b                                                  ; $f578 : $c2, $a2
	ora ($03), Y                                                  ; $f57a : $11, $03
	.db $00                                                  ; $f57c : $00
	iny                                                  ; $f57d : $c8
	ldx #$0211.w                                                  ; $f57e : $a2, $11, $02
	.db $00                                                  ; $f581 : $00
	dec $09a2.w                                                  ; $f582 : $ce, $a2, $09
	tsb $00                                                  ; $f585 : $04, $00
	inc $09a2.w, X                                                  ; $f587 : $fe, $a2, $09
	ora $00, S                                                  ; $f58a : $03, $00
	inc $13a3.w, X                                                  ; $f58c : $fe, $a3, $13
	ora $7b                                                  ; $f58f : $05, $7b
	sbc ($9e, S), Y                                                  ; $f591 : $f3, $9e

br_4f_f593:
	ora ($04, S), Y                                                  ; $f593 : $13, $04
	.db $80, $da                                                  ; $f595 : $80, $da

	sta $800413.l, X                                                  ; $f597 : $9f, $13, $04, $80
	inc $9f                                                  ; $f59b : $e6, $9f
	ora ($04, S), Y                                                  ; $f59d : $13, $04
	bra br_4f_f593                                                  ; $f59f : $80, $f2

	sta $00030b.l, X                                                  ; $f5a1 : $9f, $0b, $03, $00
	lda $030ba5.l                                                  ; $f5a5 : $af, $a5, $0b, $03
	.db $00                                                  ; $f5a9 : $00
	lda $a5, S                                                  ; $f5aa : $a3, $a5
	phd                                                  ; $f5ac : $0b
	ora $00                                                  ; $f5ad : $05, $00
	lda [$a5]                                                  ; $f5af : $a7, $a5
	phd                                                  ; $f5b1 : $0b
	cop $00.b                                                  ; $f5b2 : $02, $00
	plb                                                  ; $f5b4 : $ab
	lda $11                                                  ; $f5b5 : $a5, $11
	ora ($00, X)                                                  ; $f5b7 : $01, $00
	cpx #$13a2.w                                                  ; $f5b9 : $e0, $a2, $13
	cop $00.b                                                  ; $f5bc : $02, $00
	.db $80, $a0                                                  ; $f5be : $80, $a0

	ora ($03, S), Y                                                  ; $f5c0 : $13, $03
	.db $00                                                  ; $f5c2 : $00
	sty $0ba0.w                                                  ; $f5c3 : $8c, $a0, $0b
	ora $00, S                                                  ; $f5c6 : $03, $00
	lda [$a5], Y                                                  ; $f5c8 : $b7, $a5
	phd                                                  ; $f5ca : $0b
	tsb $00                                                  ; $f5cb : $04, $00
	sta $0513a5.l, X                                                  ; $f5cd : $9f, $a5, $13, $05
	.db $00                                                  ; $f5d1 : $00
	ldy $a0                                                  ; $f5d2 : $a4, $a0
	ora ($05, S), Y                                                  ; $f5d4 : $13, $05
	.db $00                                                  ; $f5d6 : $00
	.db $b0, $a0                                                  ; $f5d7 : $b0, $a0

	phd                                                  ; $f5d9 : $0b
	.db $00                                                  ; $f5da : $00
	.db $00                                                  ; $f5db : $00
	cmp $a5, S                                                  ; $f5dc : $c3, $a5
	phd                                                  ; $f5de : $0b
	.db $00                                                  ; $f5df : $00
	.db $00                                                  ; $f5e0 : $00
	cmp [$a5]                                                  ; $f5e1 : $c7, $a5
	phd                                                  ; $f5e3 : $0b
	cop $00.b                                                  ; $f5e4 : $02, $00
	wai                                                  ; $f5e6 : $cb
	lda $0b                                                  ; $f5e7 : $a5, $0b
	.db $00                                                  ; $f5e9 : $00
	.db $00                                                  ; $f5ea : $00
	cmp $0101a5.l                                                  ; $f5eb : $cf, $a5, $01, $01
	jsr $a6e3.w                                                  ; $f5ef : $20, $e3, $a6
	ora ($01, X)                                                  ; $f5f2 : $01, $01
	jsr $a6e4.w                                                  ; $f5f4 : $20, $e4, $a6
	ora ($01, X)                                                  ; $f5f7 : $01, $01
	jsr $a6e5.w                                                  ; $f5f9 : $20, $e5, $a6
	ora ($00, X)                                                  ; $f5fc : $01, $00
	jsr $a6e6.w                                                  ; $f5fe : $20, $e6, $a6
	ora ($00, X)                                                  ; $f601 : $01, $00
	jsr $a6e7.w                                                  ; $f603 : $20, $e7, $a6
	ora ($01, X)                                                  ; $f606 : $01, $01
	jsr $a6e8.w                                                  ; $f608 : $20, $e8, $a6
	ora ($00, X)                                                  ; $f60b : $01, $00
	jsr $a6e9.w                                                  ; $f60d : $20, $e9, $a6
	phd                                                  ; $f610 : $0b
	.db $00                                                  ; $f611 : $00
	.db $00                                                  ; $f612 : $00
	cmp ($a5, S), Y                                                  ; $f613 : $d3, $a5
	ora ($00, S), Y                                                  ; $f615 : $13, $00
	.db $00                                                  ; $f617 : $00
	ldy $09a0.w, X                                                  ; $f618 : $bc, $a0, $09
	ora $00                                                  ; $f61b : $05, $00
	inc $13a4.w, X                                                  ; $f61d : $fe, $a4, $13
	tsb $00                                                  ; $f620 : $04, $00
	tya                                                  ; $f622 : $98
	ldy #$040b.w                                                  ; $f623 : $a0, $0b, $04
	.db $00                                                  ; $f626 : $00
	lda ($a5, S), Y                                                  ; $f627 : $b3, $a5
	bpl br_4f_f62e                                                  ; $f629 : $10, $03

	jsr ($a5eb.w, X)                                                  ; $f62b : $fc, $eb, $a5

br_4f_f62e:
	.db $10, $04                                                  ; $f62e : $10, $04

	jsr ($a5ee.w, X)                                                  ; $f630 : $fc, $ee, $a5
	bpl br_4f_f638                                                  ; $f633 : $10, $03

	jsr ($a5f7.w, X)                                                  ; $f635 : $fc, $f7, $a5

br_4f_f638:
	.db $10, $04                                                  ; $f638 : $10, $04

	jsr ($a5fa.w, X)                                                  ; $f63a : $fc, $fa, $a5
	.db $10, $04                                                  ; $f63d : $10, $04

	.db $00                                                  ; $f63f : $00
	sta $a6, S                                                  ; $f640 : $83, $a6
	bpl br_4f_f649                                                  ; $f642 : $10, $05

	.db $00                                                  ; $f644 : $00
	sta $a6, S                                                  ; $f645 : $83, $a6
	bpl br_4f_f64d                                                  ; $f647 : $10, $04

br_4f_f649:
	.db $00                                                  ; $f649 : $00
	sty $08a6.w                                                  ; $f64a : $8c, $a6, $08

br_4f_f64d:
	ora $20, S                                                  ; $f64d : $03, $20
	cmp $08a6.w                                                  ; $f64f : $cd, $a6, $08
	tsb $20                                                  ; $f652 : $04, $20
	dec $08a6.w                                                  ; $f654 : $ce, $a6, $08
	ora $20                                                  ; $f657 : $05, $20
	dec $08a6.w                                                  ; $f659 : $ce, $a6, $08
	cop $20.b                                                  ; $f65c : $02, $20
	cmp ($a6), Y                                                  ; $f65e : $d1, $a6
	php                                                  ; $f660 : $08
	ora $20, S                                                  ; $f661 : $03, $20
	cmp ($a6, S), Y                                                  ; $f663 : $d3, $a6
	ora ($04), Y                                                  ; $f665 : $11, $04
	.db $00                                                  ; $f667 : $00
	stx $a2                                                  ; $f668 : $86, $a2
	ora ($03), Y                                                  ; $f66a : $11, $03
	jsr $11a1e0.l                                                  ; $f66c : $22, $e0, $a1, $11
	tsb $22                                                  ; $f670 : $04, $22
	cpx #$11a1.w                                                  ; $f672 : $e0, $a1, $11
	ora $22, S                                                  ; $f675 : $03, $22
	inc $a1                                                  ; $f677 : $e6, $a1
	ora ($05), Y                                                  ; $f679 : $11, $05
	jsr $11a1e6.l                                                  ; $f67b : $22, $e6, $a1, $11
	tsb $22                                                  ; $f67f : $04, $22
	cpx $11a1.w                                                  ; $f681 : $ec, $a1, $11
	ora $00, S                                                  ; $f684 : $03, $00
	tax                                                  ; $f686 : $aa
	ldx #$0509.w                                                  ; $f687 : $a2, $09, $05
	.db $00                                                  ; $f68a : $00
	inc $11a2.w, X                                                  ; $f68b : $fe, $a2, $11
	ora $00, S                                                  ; $f68e : $03, $00
	dec $11a2.w                                                  ; $f690 : $ce, $a2, $11
	tsb $00                                                  ; $f693 : $04, $00
	dec $13a2.w                                                  ; $f695 : $ce, $a2, $13
	ora $80                                                  ; $f698 : $05, $80
	inc $9f                                                  ; $f69a : $e6, $9f
	phd                                                  ; $f69c : $0b
	ora $00, S                                                  ; $f69d : $03, $00
	lda [$a5]                                                  ; $f69f : $a7, $a5
	phd                                                  ; $f6a1 : $0b
	ora $00, S                                                  ; $f6a2 : $03, $00
	lda ($a5, S), Y                                                  ; $f6a4 : $b3, $a5
	phd                                                  ; $f6a6 : $0b
	tsb $00                                                  ; $f6a7 : $04, $00
	lda [$a5], Y                                                  ; $f6a9 : $b7, $a5
	phd                                                  ; $f6ab : $0b
	ora $00                                                  ; $f6ac : $05, $00
	lda [$a5], Y                                                  ; $f6ae : $b7, $a5
	.db $00                                                  ; $f6b0 : $00
	ora ($6c, X)                                                  ; $f6b1 : $01, $6c
	sbc $0f3199.l, X                                                  ; $f6b3 : $ff, $99, $31, $0f
	tsb $141b.w                                                  ; $f6b7 : $0c, $1b, $14
	ora ($0f, S), Y                                                  ; $f6ba : $13, $0f
	phd                                                  ; $f6bc : $0b
	ora $13, X                                                  ; $f6bd : $15, $13
	bit $1e1e.w                                                  ; $f6bf : $2c, $1e, $1e
	bit $1c, X                                                  ; $f6c2 : $34, $1c
	asl $2a, X                                                  ; $f6c4 : $16, $2a
	and $0b, X                                                  ; $f6c6 : $35, $0b
	ora $311b0b.l                                                  ; $f6c8 : $0f, $0b, $1b, $31
	and $130f2b.l                                                  ; $f6cc : $2f, $2b, $0f, $13
	phd                                                  ; $f6d0 : $0b
	ora [$16], Y                                                  ; $f6d1 : $17, $16
	asl $0f27.w, X                                                  ; $f6d3 : $1e, $27, $0f
	ora $0f, X                                                  ; $f6d6 : $15, $0f
	bit $0f17.w                                                  ; $f6d8 : $2c, $17, $0f
	rol $33, X                                                  ; $f6db : $36, $33
	bit $0d, X                                                  ; $f6dd : $34, $0d
	rol $3127.w                                                  ; $f6df : $2e, $27, $31
	bit $26                                                  ; $f6e2 : $24, $26
	jsr $351610.l                                                  ; $f6e4 : $22, $10, $16, $35
	and #$220f.w                                                  ; $f6e8 : $29, $0f, $22
	phd                                                  ; $f6eb : $0b
	ora $231c0f.l                                                  ; $f6ec : $0f, $0f, $1c, $23
	ora ($17, S), Y                                                  ; $f6f0 : $13, $17
	ora [$31], Y                                                  ; $f6f2 : $17, $31
	phd                                                  ; $f6f4 : $0b
	phd                                                  ; $f6f5 : $0b
	ora $0f0b0f.l                                                  ; $f6f6 : $0f, $0f, $0b, $0f
	asl $0e0e.w                                                  ; $f6fa : $0e, $0e, $0e
	asl $0e0e.w                                                  ; $f6fd : $0e, $0e, $0e
	asl $0e0e.w                                                  ; $f700 : $0e, $0e, $0e
	asl $0e0e.w                                                  ; $f703 : $0e, $0e, $0e
	asl $0b0d.w                                                  ; $f706 : $0e, $0d, $0b
	pld                                                  ; $f709 : $2b
	asl $160f.w, X                                                  ; $f70a : $1e, $0f, $16
	.db $10, $26                                                  ; $f70d : $10, $26

	ora $0b2a38.l                                                  ; $f70f : $0f, $38, $2a, $0b
	phd                                                  ; $f713 : $0b
	trb $310f.w                                                  ; $f714 : $1c, $0f, $31
	ora $2c13.w, X                                                  ; $f717 : $1d, $13, $2c
	and $2f, X                                                  ; $f71a : $35, $2f
	and [$0f]                                                  ; $f71c : $27, $0f
	plp                                                  ; $f71e : $28
	and #$2a34.w                                                  ; $f71f : $29, $34, $2a
	asl $2b, X                                                  ; $f722 : $16, $2b
	ora $090e.w                                                  ; $f724 : $0d, $0e, $09
	ora #$0909.w                                                  ; $f727 : $09, $09, $09
	ora #$0909.w                                                  ; $f72a : $09, $09, $09
	ora #$0909.w                                                  ; $f72d : $09, $09, $09


Data_4f_f730:
	ora ($02, X)                                                  ; $f730 : $01, $02
	ora $04, S                                                  ; $f732 : $03, $04
	tsb $04                                                  ; $f734 : $04, $04
	ora $03                                                  ; $f736 : $05, $03
	tsb $04                                                  ; $f738 : $04, $04
	tsb $06                                                  ; $f73a : $04, $06
	ora $07                                                  ; $f73c : $05, $07
	php                                                  ; $f73e : $08
	ora #$0909.w                                                  ; $f73f : $09, $09, $09
	ora #$0302.w                                                  ; $f742 : $09, $02, $03
	asl $04                                                  ; $f745 : $06, $04
	tsb $04                                                  ; $f747 : $04, $04
	ora #$0302.w                                                  ; $f749 : $09, $02, $03
	asl                                                  ; $f74c : $0a
	phd                                                  ; $f74d : $0b
	phd                                                  ; $f74e : $0b
	phd                                                  ; $f74f : $0b
	phd                                                  ; $f750 : $0b
	phd                                                  ; $f751 : $0b
	phd                                                  ; $f752 : $0b
	ora $03                                                  ; $f753 : $05, $03
	tsb $04                                                  ; $f755 : $04, $04
	tsb $04                                                  ; $f757 : $04, $04
	asl $02                                                  ; $f759 : $06, $02
	ora $07, S                                                  ; $f75b : $03, $07
	php                                                  ; $f75d : $08
	tsb $0c0c.w                                                  ; $f75e : $0c, $0c, $0c
	tsb $060c.w                                                  ; $f761 : $0c, $0c, $06
	ora $0b0a.w                                                  ; $f764 : $0d, $0a, $0b
	phd                                                  ; $f767 : $0b
	phd                                                  ; $f768 : $0b
	phd                                                  ; $f769 : $0b
	phd                                                  ; $f76a : $0b
	phd                                                  ; $f76b : $0b
	ora $03                                                  ; $f76c : $05, $03
	tsb $04                                                  ; $f76e : $04, $04
	tsb $04                                                  ; $f770 : $04, $04
	tsb $07                                                  ; $f772 : $04, $07
	php                                                  ; $f774 : $08
	ora #$0909.w                                                  ; $f775 : $09, $09, $09
	ora #$0b0a.w                                                  ; $f778 : $09, $0a, $0b
	phd                                                  ; $f77b : $0b
	phd                                                  ; $f77c : $0b
	phd                                                  ; $f77d : $0b
	phd                                                  ; $f77e : $0b
	phd                                                  ; $f77f : $0b
	phd                                                  ; $f780 : $0b
	phd                                                  ; $f781 : $0b
	phd                                                  ; $f782 : $0b
	phd                                                  ; $f783 : $0b
	asl $0a                                                  ; $f784 : $06, $0a
	phd                                                  ; $f786 : $0b
	phd                                                  ; $f787 : $0b
	phd                                                  ; $f788 : $0b
	phd                                                  ; $f789 : $0b
	phd                                                  ; $f78a : $0b
	phd                                                  ; $f78b : $0b
	cop $03.b                                                  ; $f78c : $02, $03
	asl $0404.w                                                  ; $f78e : $0e, $04, $04
	tsb $04                                                  ; $f791 : $04, $04
	tsb $0f                                                  ; $f793 : $04, $0f
	tsb $02                                                  ; $f795 : $04, $02
	ora $02, S                                                  ; $f797 : $03, $02
	ora $0a, S                                                  ; $f799 : $03, $0a
	phd                                                  ; $f79b : $0b
	phd                                                  ; $f79c : $0b
	phd                                                  ; $f79d : $0b
	phd                                                  ; $f79e : $0b
	phd                                                  ; $f79f : $0b
	bpl br_4f_f7a7                                                  ; $f7a0 : $10, $05

	ora $0c, S                                                  ; $f7a2 : $03, $0c
	tsb $110c.w                                                  ; $f7a4 : $0c, $0c, $11

br_4f_f7a7:
	asl $02                                                  ; $f7a7 : $06, $02
	ora $09, S                                                  ; $f7a9 : $03, $09
	ora $0e, S                                                  ; $f7ab : $03, $0e
	ora $0f0f0f.l                                                  ; $f7ad : $0f, $0f, $0f, $0f
	ora $03020f.l                                                  ; $f7b1 : $0f, $0f, $02, $03
	php                                                  ; $f7b5 : $08
	ora [$08]                                                  ; $f7b6 : $07, $08
	cop $03.b                                                  ; $f7b8 : $02, $03
	ora #$1212.w                                                  ; $f7ba : $09, $12, $12
	ora ($12)                                                  ; $f7bd : $12, $12
	ora [$08]                                                  ; $f7bf : $07, $08
	ora ($0b, S), Y                                                  ; $f7c1 : $13, $0b
	.db $10, $10                                                  ; $f7c3 : $10, $10

	.db $10, $10                                                  ; $f7c5 : $10, $10

	asl $0d                                                  ; $f7c7 : $06, $0d
	ora $03                                                  ; $f7c9 : $05, $03
	ora $03                                                  ; $f7cb : $05, $03
	ora $02                                                  ; $f7cd : $05, $02
	ora $03, S                                                  ; $f7cf : $03, $03
	asl $0f0f.w                                                  ; $f7d1 : $0e, $0f, $0f
	ora $03                                                  ; $f7d4 : $05, $03
	tsb $1111.w                                                  ; $f7d6 : $0c, $11, $11
	tsb $0302.w                                                  ; $f7d9 : $0c, $02, $03
	trb $11                                                  ; $f7dc : $14, $11
	ora ($15), Y                                                  ; $f7de : $11, $15
	ora $12, X                                                  ; $f7e0 : $15, $12
	ora ($05)                                                  ; $f7e2 : $12, $05
	ora $0a, S                                                  ; $f7e4 : $03, $0a
	.db $10, $10                                                  ; $f7e6 : $10, $10

	.db $10, $10                                                  ; $f7e8 : $10, $10

	.db $10, $10                                                  ; $f7ea : $10, $10

	cop $03.b                                                  ; $f7ec : $02, $03
	asl $0f0f.w                                                  ; $f7ee : $0e, $0f, $0f
	ora $0f0f0f.l                                                  ; $f7f1 : $0f, $0f, $0f, $0f
	ora $161614.l                                                  ; $f7f5 : $0f, $14, $16, $16
	trb $14                                                  ; $f7f9 : $14, $14
	asl $16, X                                                  ; $f7fb : $16, $16
	ora [$0d], Y                                                  ; $f7fd : $17, $0d
	trb $09                                                  ; $f7ff : $14, $09
	ora ($09)                                                  ; $f801 : $12, $09
	ora ($07)                                                  ; $f803 : $12, $07
	php                                                  ; $f805 : $08
	ora $03                                                  ; $f806 : $05, $03
	clc                                                  ; $f808 : $18
	clc                                                  ; $f809 : $18
	clc                                                  ; $f80a : $18
	clc                                                  ; $f80b : $18
	clc                                                  ; $f80c : $18
	clc                                                  ; $f80d : $18
	clc                                                  ; $f80e : $18
	clc                                                  ; $f80f : $18
	clc                                                  ; $f810 : $18
	ora $1818.w, Y                                                  ; $f811 : $19, $18, $18
	ina                                                  ; $f814 : $1a
	ora [$17], Y                                                  ; $f815 : $17, $17
	ora [$17], Y                                                  ; $f817 : $17, $17
	ora [$1b], Y                                                  ; $f819 : $17, $1b
	ora $14                                                  ; $f81b : $05, $14
	.db $0f, $0f, $17


Data_4f_f820:
	.db $01                                                  ; $f820 : $01
	cop $03.b                                                  ; $f821 : $02, $03
	tsb $04                                                  ; $f823 : $04, $04
	tsb $05                                                  ; $f825 : $04, $05
	ora $04, S                                                  ; $f827 : $03, $04
	tsb $04                                                  ; $f829 : $04, $04
	asl $05                                                  ; $f82b : $06, $05
	ora [$08]                                                  ; $f82d : $07, $08
	ora #$0909.w                                                  ; $f82f : $09, $09, $09
	ora #$0302.w                                                  ; $f832 : $09, $02, $03
	asl $04                                                  ; $f835 : $06, $04
	tsb $04                                                  ; $f837 : $04, $04
	ora #$0302.w                                                  ; $f839 : $09, $02, $03
	asl                                                  ; $f83c : $0a
	phd                                                  ; $f83d : $0b
	phd                                                  ; $f83e : $0b
	phd                                                  ; $f83f : $0b
	phd                                                  ; $f840 : $0b
	phd                                                  ; $f841 : $0b
	phd                                                  ; $f842 : $0b
	ora $03                                                  ; $f843 : $05, $03
	tsb $04                                                  ; $f845 : $04, $04
	tsb $04                                                  ; $f847 : $04, $04
	asl $02                                                  ; $f849 : $06, $02
	ora $07, S                                                  ; $f84b : $03, $07
	php                                                  ; $f84d : $08
	tsb $0c0c.w                                                  ; $f84e : $0c, $0c, $0c
	tsb $060c.w                                                  ; $f851 : $0c, $0c, $06
	ora $0b0a.w                                                  ; $f854 : $0d, $0a, $0b
	phd                                                  ; $f857 : $0b
	phd                                                  ; $f858 : $0b
	phd                                                  ; $f859 : $0b
	phd                                                  ; $f85a : $0b
	phd                                                  ; $f85b : $0b
	ora $03                                                  ; $f85c : $05, $03
	tsb $04                                                  ; $f85e : $04, $04
	tsb $04                                                  ; $f860 : $04, $04
	tsb $07                                                  ; $f862 : $04, $07
	php                                                  ; $f864 : $08
	ora #$0909.w                                                  ; $f865 : $09, $09, $09
	ora #$0b0a.w                                                  ; $f868 : $09, $0a, $0b
	phd                                                  ; $f86b : $0b
	phd                                                  ; $f86c : $0b
	phd                                                  ; $f86d : $0b
	phd                                                  ; $f86e : $0b
	phd                                                  ; $f86f : $0b
	phd                                                  ; $f870 : $0b
	phd                                                  ; $f871 : $0b
	phd                                                  ; $f872 : $0b
	phd                                                  ; $f873 : $0b
	asl $0a                                                  ; $f874 : $06, $0a
	phd                                                  ; $f876 : $0b
	phd                                                  ; $f877 : $0b
	phd                                                  ; $f878 : $0b
	phd                                                  ; $f879 : $0b
	phd                                                  ; $f87a : $0b
	phd                                                  ; $f87b : $0b
	cop $03.b                                                  ; $f87c : $02, $03
	asl $0404.w                                                  ; $f87e : $0e, $04, $04
	tsb $04                                                  ; $f881 : $04, $04
	tsb $04                                                  ; $f883 : $04, $04
	tsb $02                                                  ; $f885 : $04, $02
	ora $02, S                                                  ; $f887 : $03, $02
	ora $0a, S                                                  ; $f889 : $03, $0a
	phd                                                  ; $f88b : $0b
	phd                                                  ; $f88c : $0b
	phd                                                  ; $f88d : $0b
	phd                                                  ; $f88e : $0b
	phd                                                  ; $f88f : $0b
	phd                                                  ; $f890 : $0b
	ora $03                                                  ; $f891 : $05, $03
	tsb $0c0c.w                                                  ; $f893 : $0c, $0c, $0c
	tsb $0206.w                                                  ; $f896 : $0c, $06, $02
	ora $09, S                                                  ; $f899 : $03, $09
	ora $0e, S                                                  ; $f89b : $03, $0e
	tsb $04                                                  ; $f89d : $04, $04
	tsb $04                                                  ; $f89f : $04, $04
	tsb $04                                                  ; $f8a1 : $04, $04
	cop $03.b                                                  ; $f8a3 : $02, $03
	php                                                  ; $f8a5 : $08
	ora [$08]                                                  ; $f8a6 : $07, $08
	cop $03.b                                                  ; $f8a8 : $02, $03
	ora #$0909.w                                                  ; $f8aa : $09, $09, $09
	ora #$0709.w                                                  ; $f8ad : $09, $09, $07
	php                                                  ; $f8b0 : $08
	asl                                                  ; $f8b1 : $0a
	phd                                                  ; $f8b2 : $0b
	phd                                                  ; $f8b3 : $0b
	phd                                                  ; $f8b4 : $0b
	phd                                                  ; $f8b5 : $0b
	phd                                                  ; $f8b6 : $0b
	asl $0d                                                  ; $f8b7 : $06, $0d
	ora $03                                                  ; $f8b9 : $05, $03
	ora $03                                                  ; $f8bb : $05, $03
	ora $02                                                  ; $f8bd : $05, $02
	ora $03, S                                                  ; $f8bf : $03, $03
	asl $0404.w                                                  ; $f8c1 : $0e, $04, $04
	ora $03                                                  ; $f8c4 : $05, $03
	tsb $0c0c.w                                                  ; $f8c6 : $0c, $0c, $0c
	tsb $0302.w                                                  ; $f8c9 : $0c, $02, $03
	ora $0c0c0c.l                                                  ; $f8cc : $0f, $0c, $0c, $0c
	tsb $0909.w                                                  ; $f8d0 : $0c, $09, $09
	ora $03                                                  ; $f8d3 : $05, $03
	asl                                                  ; $f8d5 : $0a
	phd                                                  ; $f8d6 : $0b
	phd                                                  ; $f8d7 : $0b
	phd                                                  ; $f8d8 : $0b
	phd                                                  ; $f8d9 : $0b
	phd                                                  ; $f8da : $0b
	phd                                                  ; $f8db : $0b
	cop $03.b                                                  ; $f8dc : $02, $03
	asl $0404.w                                                  ; $f8de : $0e, $04, $04
	tsb $04                                                  ; $f8e1 : $04, $04
	tsb $04                                                  ; $f8e3 : $04, $04
	tsb $0f                                                  ; $f8e5 : $04, $0f
	.db $10, $10                                                  ; $f8e7 : $10, $10

	ora $10100f.l                                                  ; $f8e9 : $0f, $0f, $10, $10
	ora ($0d), Y                                                  ; $f8ed : $11, $0d
	ora $090909.l                                                  ; $f8ef : $0f, $09, $09, $09
	ora #$0807.w                                                  ; $f8f3 : $09, $07, $08
	ora $03                                                  ; $f8f6 : $05, $03
	ora ($12)                                                  ; $f8f8 : $12, $12
	ora ($12)                                                  ; $f8fa : $12, $12
	ora ($12)                                                  ; $f8fc : $12, $12
	ora ($12)                                                  ; $f8fe : $12, $12
	ora ($12)                                                  ; $f900 : $12, $12
	ora ($12)                                                  ; $f902 : $12, $12
	ora ($11, S), Y                                                  ; $f904 : $13, $11
	ora ($11), Y                                                  ; $f906 : $11, $11
	ora ($11), Y                                                  ; $f908 : $11, $11
	trb $05                                                  ; $f90a : $14, $05
	ora $110404.l                                                  ; $f90c : $0f, $04, $04, $11
	.db $00                                                  ; $f910 : $00
	ora ($02, X)                                                  ; $f911 : $01, $02
	.db $00                                                  ; $f913 : $00
	.db $00                                                  ; $f914 : $00
	.db $00                                                  ; $f915 : $00
	ora $02, S                                                  ; $f916 : $03, $02
	.db $00                                                  ; $f918 : $00
	.db $00                                                  ; $f919 : $00
	.db $00                                                  ; $f91a : $00
	.db $00                                                  ; $f91b : $00
	.db $00                                                  ; $f91c : $00
	ora ($00, X)                                                  ; $f91d : $01, $00
	.db $00                                                  ; $f91f : $00
	.db $00                                                  ; $f920 : $00
	.db $00                                                  ; $f921 : $00
	.db $00                                                  ; $f922 : $00
	ora ($02, X)                                                  ; $f923 : $01, $02
	.db $00                                                  ; $f925 : $00
	.db $00                                                  ; $f926 : $00
	.db $00                                                  ; $f927 : $00
	.db $00                                                  ; $f928 : $00
	.db $00                                                  ; $f929 : $00
	ora ($02, X)                                                  ; $f92a : $01, $02
	tsb $00                                                  ; $f92c : $04, $00
	.db $00                                                  ; $f92e : $00
	.db $00                                                  ; $f92f : $00
	.db $00                                                  ; $f930 : $00
	.db $00                                                  ; $f931 : $00
	.db $00                                                  ; $f932 : $00
	ora $02, S                                                  ; $f933 : $03, $02
	.db $00                                                  ; $f935 : $00
	.db $00                                                  ; $f936 : $00
	.db $00                                                  ; $f937 : $00
	.db $00                                                  ; $f938 : $00
	.db $00                                                  ; $f939 : $00
	ora ($02, X)                                                  ; $f93a : $01, $02
	ora ($00, X)                                                  ; $f93c : $01, $00
	.db $00                                                  ; $f93e : $00
	.db $00                                                  ; $f93f : $00
	.db $00                                                  ; $f940 : $00
	.db $00                                                  ; $f941 : $00
	.db $00                                                  ; $f942 : $00
	.db $00                                                  ; $f943 : $00
	ora ($04, X)                                                  ; $f944 : $01, $04
	.db $00                                                  ; $f946 : $00
	.db $00                                                  ; $f947 : $00
	.db $00                                                  ; $f948 : $00
	.db $00                                                  ; $f949 : $00
	.db $00                                                  ; $f94a : $00
	.db $00                                                  ; $f94b : $00
	ora $02, S                                                  ; $f94c : $03, $02
	.db $00                                                  ; $f94e : $00
	.db $00                                                  ; $f94f : $00
	.db $00                                                  ; $f950 : $00
	.db $00                                                  ; $f951 : $00
	.db $00                                                  ; $f952 : $00
	ora ($00, X)                                                  ; $f953 : $01, $00
	.db $00                                                  ; $f955 : $00
	.db $00                                                  ; $f956 : $00
	.db $00                                                  ; $f957 : $00
	.db $00                                                  ; $f958 : $00
	tsb $00                                                  ; $f959 : $04, $00
	.db $00                                                  ; $f95b : $00
	.db $00                                                  ; $f95c : $00
	.db $00                                                  ; $f95d : $00
	.db $00                                                  ; $f95e : $00
	.db $00                                                  ; $f95f : $00
	.db $00                                                  ; $f960 : $00
	.db $00                                                  ; $f961 : $00
	.db $00                                                  ; $f962 : $00
	.db $00                                                  ; $f963 : $00
	.db $00                                                  ; $f964 : $00
	tsb $00                                                  ; $f965 : $04, $00
	.db $00                                                  ; $f967 : $00
	.db $00                                                  ; $f968 : $00
	.db $00                                                  ; $f969 : $00
	.db $00                                                  ; $f96a : $00
	.db $00                                                  ; $f96b : $00
	.db $00                                                  ; $f96c : $00
	cop $00.b                                                  ; $f96d : $02, $00
	.db $00                                                  ; $f96f : $00
	.db $00                                                  ; $f970 : $00
	.db $00                                                  ; $f971 : $00
	.db $00                                                  ; $f972 : $00
	.db $00                                                  ; $f973 : $00
	.db $00                                                  ; $f974 : $00
	.db $00                                                  ; $f975 : $00
	.db $00                                                  ; $f976 : $00
	cop $00.b                                                  ; $f977 : $02, $00
	cop $04.b                                                  ; $f979 : $02, $04
	.db $00                                                  ; $f97b : $00
	.db $00                                                  ; $f97c : $00
	.db $00                                                  ; $f97d : $00
	.db $00                                                  ; $f97e : $00
	.db $00                                                  ; $f97f : $00
	.db $00                                                  ; $f980 : $00
	ora $02, S                                                  ; $f981 : $03, $02
	.db $00                                                  ; $f983 : $00
	.db $00                                                  ; $f984 : $00
	.db $00                                                  ; $f985 : $00
	.db $00                                                  ; $f986 : $00
	.db $00                                                  ; $f987 : $00
	.db $00                                                  ; $f988 : $00
	cop $00.b                                                  ; $f989 : $02, $00
	cop $00.b                                                  ; $f98b : $02, $00
	.db $00                                                  ; $f98d : $00
	.db $00                                                  ; $f98e : $00
	.db $00                                                  ; $f98f : $00
	.db $00                                                  ; $f990 : $00
	.db $00                                                  ; $f991 : $00
	.db $00                                                  ; $f992 : $00
	ora ($02, X)                                                  ; $f993 : $01, $02
	.db $00                                                  ; $f995 : $00
	ora ($00, X)                                                  ; $f996 : $01, $00
	ora ($02, X)                                                  ; $f998 : $01, $02
	.db $00                                                  ; $f99a : $00
	.db $00                                                  ; $f99b : $00
	.db $00                                                  ; $f99c : $00
	.db $00                                                  ; $f99d : $00
	.db $00                                                  ; $f99e : $00
	ora ($00, X)                                                  ; $f99f : $01, $00
	tsb $00                                                  ; $f9a1 : $04, $00
	.db $00                                                  ; $f9a3 : $00
	.db $00                                                  ; $f9a4 : $00
	.db $00                                                  ; $f9a5 : $00
	.db $00                                                  ; $f9a6 : $00
	.db $00                                                  ; $f9a7 : $00
	ora ($03, X)                                                  ; $f9a8 : $01, $03
	cop $03.b                                                  ; $f9aa : $02, $03
	cop $00.b                                                  ; $f9ac : $02, $00
	.db $00                                                  ; $f9ae : $00
	cop $02.b                                                  ; $f9af : $02, $02
	.db $00                                                  ; $f9b1 : $00
	.db $00                                                  ; $f9b2 : $00
	.db $00                                                  ; $f9b3 : $00
	ora $02, S                                                  ; $f9b4 : $03, $02
	.db $00                                                  ; $f9b6 : $00
	.db $00                                                  ; $f9b7 : $00
	.db $00                                                  ; $f9b8 : $00
	.db $00                                                  ; $f9b9 : $00
	ora ($02, X)                                                  ; $f9ba : $01, $02
	.db $00                                                  ; $f9bc : $00
	.db $00                                                  ; $f9bd : $00
	.db $00                                                  ; $f9be : $00
	.db $00                                                  ; $f9bf : $00
	.db $00                                                  ; $f9c0 : $00
	.db $00                                                  ; $f9c1 : $00
	.db $00                                                  ; $f9c2 : $00
	ora $02, S                                                  ; $f9c3 : $03, $02
	tsb $00                                                  ; $f9c5 : $04, $00
	.db $00                                                  ; $f9c7 : $00
	.db $00                                                  ; $f9c8 : $00
	.db $00                                                  ; $f9c9 : $00
	.db $00                                                  ; $f9ca : $00
	.db $00                                                  ; $f9cb : $00
	ora ($02, X)                                                  ; $f9cc : $01, $02
	.db $00                                                  ; $f9ce : $00
	.db $00                                                  ; $f9cf : $00
	.db $00                                                  ; $f9d0 : $00
	.db $00                                                  ; $f9d1 : $00
	.db $00                                                  ; $f9d2 : $00
	.db $00                                                  ; $f9d3 : $00
	.db $00                                                  ; $f9d4 : $00
	.db $00                                                  ; $f9d5 : $00
	.db $00                                                  ; $f9d6 : $00
	.db $00                                                  ; $f9d7 : $00
	.db $00                                                  ; $f9d8 : $00
	.db $00                                                  ; $f9d9 : $00
	.db $00                                                  ; $f9da : $00
	.db $00                                                  ; $f9db : $00
	.db $00                                                  ; $f9dc : $00
	.db $00                                                  ; $f9dd : $00
	ora ($00, X)                                                  ; $f9de : $01, $00
	.db $00                                                  ; $f9e0 : $00
	.db $00                                                  ; $f9e1 : $00
	.db $00                                                  ; $f9e2 : $00
	.db $00                                                  ; $f9e3 : $00
	ora ($00, X)                                                  ; $f9e4 : $01, $00
	ora $02, S                                                  ; $f9e6 : $03, $02
	ora $05                                                  ; $f9e8 : $05, $05
	.db $00                                                  ; $f9ea : $00
	.db $00                                                  ; $f9eb : $00
	ora $05                                                  ; $f9ec : $05, $05
	.db $00                                                  ; $f9ee : $00
	.db $00                                                  ; $f9ef : $00
	ora $05                                                  ; $f9f0 : $05, $05
	.db $00                                                  ; $f9f2 : $00
	.db $00                                                  ; $f9f3 : $00
	.db $00                                                  ; $f9f4 : $00
	.db $00                                                  ; $f9f5 : $00
	.db $00                                                  ; $f9f6 : $00
	.db $00                                                  ; $f9f7 : $00
	.db $00                                                  ; $f9f8 : $00
	.db $00                                                  ; $f9f9 : $00
	.db $00                                                  ; $f9fa : $00
	.db $00                                                  ; $f9fb : $00
	.db $00                                                  ; $f9fc : $00
	.db $00                                                  ; $f9fd : $00
	.db $00                                                  ; $f9fe : $00
	.db $00                                                  ; $f9ff : $00
	bpl br_4f_fa02                                                  ; $fa00 : $10, $00

br_4f_fa02:
	jsr $3000.w                                                  ; $fa02 : $20, $00, $30
	.db $00                                                  ; $fa05 : $00
	ora ($11, X)                                                  ; $fa06 : $01, $11
	cop $22.b                                                  ; $fa08 : $02, $22
	ora ($02, X)                                                  ; $fa0a : $01, $02
	ora $04, S                                                  ; $fa0c : $03, $04
	ora $05                                                  ; $fa0e : $05, $05
	asl $03                                                  ; $fa10 : $06, $03
	ora [$07]                                                  ; $fa12 : $07, $07
	ora [$08]                                                  ; $fa14 : $07, $08
	ora #$0b0a.w                                                  ; $fa16 : $09, $0a, $0b
	tsb $0c0c.w                                                  ; $fa19 : $0c, $0c, $0c
	tsb $030d.w                                                  ; $fa1c : $0c, $0d, $03
	php                                                  ; $fa1f : $08
	asl $0e0e.w                                                  ; $fa20 : $0e, $0e, $0e
	ora $110310.l                                                  ; $fa23 : $0f, $10, $03, $11
	ora ($12)                                                  ; $fa27 : $12, $12
	ora ($12)                                                  ; $fa29 : $12, $12
	ora ($12)                                                  ; $fa2b : $12, $12
	ora ($03, S), Y                                                  ; $fa2d : $13, $03
	trb $14                                                  ; $fa2f : $14, $14
	trb $14                                                  ; $fa31 : $14, $14
	php                                                  ; $fa33 : $08
	ora $03, X                                                  ; $fa34 : $15, $03
	asl $0b, X                                                  ; $fa36 : $16, $0b
	ora [$17], Y                                                  ; $fa38 : $17, $17
	ora [$17], Y                                                  ; $fa3a : $17, $17
	ora [$08], Y                                                  ; $fa3c : $17, $08
	clc                                                  ; $fa3e : $18
	ora $1a1a.w, Y                                                  ; $fa3f : $19, $1a, $1a
	ina                                                  ; $fa42 : $1a
	ina                                                  ; $fa43 : $1a
	ina                                                  ; $fa44 : $1a
	ina                                                  ; $fa45 : $1a
	tcs                                                  ; $fa46 : $1b
	ora $1c, S                                                  ; $fa47 : $03, $1c
	trb $1c1c.w                                                  ; $fa49 : $1c, $1c, $1c
	trb $0b1d.w                                                  ; $fa4c : $1c, $1d, $0b
	tsb $0c0c.w                                                  ; $fa4f : $0c, $0c, $0c
	tsb $1f1e.w                                                  ; $fa52 : $0c, $1e, $1f
	ora $1f1f1f.l, X                                                  ; $fa55 : $1f, $1f, $1f, $1f
	ora $1f1f1f.l, X                                                  ; $fa59 : $1f, $1f, $1f, $1f
	ora $212008.l, X                                                  ; $fa5d : $1f, $08, $20, $21
	and ($21, X)                                                  ; $fa61 : $21, $21
	and ($21, X)                                                  ; $fa63 : $21, $21
	and ($22, X)                                                  ; $fa65 : $21, $22
	ora $23, S                                                  ; $fa67 : $03, $23
	ora $05                                                  ; $fa69 : $05, $05
	ora $05                                                  ; $fa6b : $05, $05
	ora $05                                                  ; $fa6d : $05, $05
	ora $24                                                  ; $fa6f : $05, $24
	ora $25, S                                                  ; $fa71 : $03, $25
	ora $26, S                                                  ; $fa73 : $03, $26
	and [$27]                                                  ; $fa75 : $27, $27
	and [$27]                                                  ; $fa77 : $27, $27
	and [$27]                                                  ; $fa79 : $27, $27
	plp                                                  ; $fa7b : $28
	ora $29, S                                                  ; $fa7c : $03, $29
	and #$2929.w                                                  ; $fa7e : $29, $29, $29
	php                                                  ; $fa81 : $08
	rol                                                  ; $fa82 : $2a
	ora $2b, S                                                  ; $fa83 : $03, $2b
	bit $0e2d.w                                                  ; $fa85 : $2c, $2d, $0e
	asl $0e0e.w                                                  ; $fa88 : $0e, $0e, $0e
	asl $2e0e.w                                                  ; $fa8b : $0e, $0e, $2e
	ora $2f, S                                                  ; $fa8e : $03, $2f
	bmi br_4f_fa9d                                                  ; $fa90 : $30, $0b

	and ($03), Y                                                  ; $fa92 : $31, $03
	and ($32)                                                  ; $fa94 : $32, $32
	and ($32)                                                  ; $fa96 : $32, $32
	and ($33)                                                  ; $fa98 : $32, $33
	phd                                                  ; $fa9a : $0b
	bit $35, X                                                  ; $fa9b : $34, $35

br_4f_fa9d:
	and $35, X                                                  ; $fa9d : $35, $35
	and $35, X                                                  ; $fa9f : $35, $35
	php                                                  ; $faa1 : $08
	rol $37, X                                                  ; $faa2 : $36, $37
	ora $38, S                                                  ; $faa4 : $03, $38
	ora $39, S                                                  ; $faa6 : $03, $39
	dea                                                  ; $faa8 : $3a
	ora $2c, S                                                  ; $faa9 : $03, $2c
	tsc                                                  ; $faab : $3b
	tsb $04                                                  ; $faac : $04, $04
	bit $3d03.w, X                                                  ; $faae : $3c, $03, $3d
	and $3d3d.w, X                                                  ; $fab1 : $3d, $3d, $3d
	rol $3f03.w, X                                                  ; $fab4 : $3e, $03, $3f
	ora [$17], Y                                                  ; $fab7 : $17, $17
	ora [$17], Y                                                  ; $fab9 : $17, $17

br_4f_fabb:
	tsb $400c.w                                                  ; $fabb : $0c, $0c, $40
	ora $41, S                                                  ; $fabe : $03, $41
	wdm                                                  ; $fac0 : $42
	wdm                                                  ; $fac1 : $42
	wdm                                                  ; $fac2 : $42
	wdm                                                  ; $fac3 : $42
	wdm                                                  ; $fac4 : $42
	wdm                                                  ; $fac5 : $42
	eor $03, S                                                  ; $fac6 : $43, $03
	mvp $14, $14                                                  ; $fac8 : $44, $14, $14
	trb $14                                                  ; $facb : $14, $14
	trb $14                                                  ; $facd : $14, $14
	trb $3f                                                  ; $facf : $14, $3f
	eor $46                                                  ; $fad1 : $45, $46
	and $45453f.l, X                                                  ; $fad3 : $3f, $3f, $45, $45
	eor [$48]                                                  ; $fad7 : $47, $48
	and $494949.l, X                                                  ; $fad9 : $3f, $49, $49, $49
	eor #$0b4a.w                                                  ; $fadd : $49, $4a, $0b
	phk                                                  ; $fae0 : $4b
	ora $4c, S                                                  ; $fae1 : $03, $4c
	eor $4f4e.w                                                  ; $fae3 : $4d, $4e, $4f
	jmp $4e4d.w                                                  ; $fae6 : $4c, $4d, $4e


	eor $4e4d4c.l                                                  ; $fae9 : $4f, $4c, $4d, $4e
	eor $514750.l                                                  ; $faed : $4f, $50, $47, $51
	eor ($53)                                                  ; $faf1 : $52, $53
	mvn $56, $55                                                  ; $faf3 : $54, $55, $56
	and $475704.l, X                                                  ; $faf6 : $3f, $04, $57, $47
	php                                                  ; $fafa : $08
	ldy $bcd8.w, X                                                  ; $fafb : $bc, $d8, $bc
	tay                                                  ; $fafe : $a8
	lda $be78.w, X                                                  ; $faff : $bd, $78, $be
	plp                                                  ; $fb02 : $28
	lda $a8bfd8.l, X                                                  ; $fb03 : $bf, $d8, $bf, $a8
	cpy #$c158.w                                                  ; $fb07 : $c0, $58, $c1
	plp                                                  ; $fb0a : $28
	rep #$f8.b                                                  ; $fb0b : $c2, $f8

br_4f_fb0d:
	rep #$c8.b                                                  ; $fb0d : $c2, $c8
	cmp $98, S                                                  ; $fb0f : $c3, $98
	cpy $48                                                  ; $fb11 : $c4, $48
	cmp $18                                                  ; $fb13 : $c5, $18
	dec $c8                                                  ; $fb15 : $c6, $c8
	dec $78                                                  ; $fb17 : $c6, $78
	cmp [$48]                                                  ; $fb19 : $c7, $48
	iny                                                  ; $fb1b : $c8
	plp                                                  ; $fb1c : $28
	cmp #$c9d8.w                                                  ; $fb1d : $c9, $d8, $c9
	tay                                                  ; $fb20 : $a8
	dex                                                  ; $fb21 : $ca
	cli                                                  ; $fb22 : $58
	wai                                                  ; $fb23 : $cb
	plp                                                  ; $fb24 : $28
	cpy $ccf8.w                                                  ; $fb25 : $cc, $f8, $cc
	tay                                                  ; $fb28 : $a8
	cmp $ce78.w                                                  ; $fb29 : $cd, $78, $ce
	cli                                                  ; $fb2c : $58
	cmp $d8d008.l                                                  ; $fb2d : $cf, $08, $d0, $d8
	bne br_4f_fabb                                                  ; $fb31 : $d0, $88

	cmp ($58), Y                                                  ; $fb33 : $d1, $58
	cmp ($38)                                                  ; $fb35 : $d2, $38
	cmp ($e8, S), Y                                                  ; $fb37 : $d3, $e8
	cmp ($c8, S), Y                                                  ; $fb39 : $d3, $c8
	pei ($78)                                                  ; $fb3b : $d4, $78
	cmp $48, X                                                  ; $fb3d : $d5, $48
	dec $f8, X                                                  ; $fb3f : $d6, $f8
	dec $c8, X                                                  ; $fb41 : $d6, $c8
	cmp [$98], Y                                                  ; $fb43 : $d7, $98
	cld                                                  ; $fb45 : $d8
	sei                                                  ; $fb46 : $78
	cmp $da28.w, Y                                                  ; $fb47 : $d9, $28, $da
	sed                                                  ; $fb4a : $f8
	phx                                                  ; $fb4b : $da
	tay                                                  ; $fb4c : $a8
	stp                                                  ; $fb4d : $db
	sei                                                  ; $fb4e : $78
	jml [$dd28.w]                                                  ; $fb4f : $dc, $28, $dd


	sed                                                  ; $fb52 : $f8
	cmp $dea8.w, X                                                  ; $fb53 : $dd, $a8, $de
	sei                                                  ; $fb56 : $78
	cmp $18e048.l, X                                                  ; $fb57 : $df, $48, $e0, $18
	sbc ($e8, X)                                                  ; $fb5b : $e1, $e8
	sbc ($98, X)                                                  ; $fb5d : $e1, $98
	sep #$68.b                                                  ; $fb5f : $e2, $68
	sbc $48, S                                                  ; $fb61 : $e3, $48
	cpx $f8                                                  ; $fb63 : $e4, $f8
	cpx $c8                                                  ; $fb65 : $e4, $c8
	sbc $98                                                  ; $fb67 : $e5, $98
	inc $68                                                  ; $fb69 : $e6, $68
	sbc [$38]                                                  ; $fb6b : $e7, $38
	inx                                                  ; $fb6d : $e8
	php                                                  ; $fb6e : $08
	sbc #$b8.b                                                  ; $fb6f : $e9, $b8
	sbc #$88.b                                                  ; $fb71 : $e9, $88
	nop                                                  ; $fb73 : $ea
	sec                                                  ; $fb74 : $38
	xba                                                  ; $fb75 : $eb
	php                                                  ; $fb76 : $08
	cpx $ecd8.w                                                  ; $fb77 : $ec, $d8, $ec
	tay                                                  ; $fb7a : $a8
	sbc $ee88.w                                                  ; $fb7b : $ed, $88, $ee
	sec                                                  ; $fb7e : $38
	sbc $b8f008.l                                                  ; $fb7f : $ef, $08, $f0, $b8
	beq br_4f_fb0d                                                  ; $fb83 : $f0, $88

	sbc ($58), Y                                                  ; $fb85 : $f1, $58
	sbc ($28)                                                  ; $fb87 : $f2, $28
	sbc ($f8, S), Y                                                  ; $fb89 : $f3, $f8
	sbc ($a8, S), Y                                                  ; $fb8b : $f3, $a8
	pea $f578.w                                                  ; $fb8d : $f4, $78, $f5
	pha                                                  ; $fb90 : $48
	inc $28, X                                                  ; $fb91 : $f6, $28
	sbc [$08], Y                                                  ; $fb93 : $f7, $08
	sed                                                  ; $fb95 : $f8
	cld                                                  ; $fb96 : $d8
	sed                                                  ; $fb97 : $f8
	tay                                                  ; $fb98 : $a8
	sbc $fa58.w, Y                                                  ; $fb99 : $f9, $58, $fa
	plp                                                  ; $fb9c : $28
	xce                                                  ; $fb9d : $fb
	sed                                                  ; $fb9e : $f8
	xce                                                  ; $fb9f : $fb
	iny                                                  ; $fba0 : $c8
	jsr ($fd98.w, X)                                                  ; $fba1 : $fc, $98, $fd
	pla                                                  ; $fba4 : $68
	inc $ff38.w, X                                                  ; $fba5 : $fe, $38, $ff
	.db $00                                                  ; $fba8 : $00
	ora ($00, X)                                                  ; $fba9 : $01, $00
	cop $02.b                                                  ; $fbab : $02, $02
	cop $03.b                                                  ; $fbad : $02, $03
	.db $00                                                  ; $fbaf : $00
	cop $02.b                                                  ; $fbb0 : $02, $02
	cop $04.b                                                  ; $fbb2 : $02, $04
	ora $01, S                                                  ; $fbb4 : $03, $01
	.db $00                                                  ; $fbb6 : $00
	ora $05                                                  ; $fbb7 : $05, $05
	ora $05                                                  ; $fbb9 : $05, $05
	ora ($00, X)                                                  ; $fbbb : $01, $00
	tsb $02                                                  ; $fbbd : $04, $02
	cop $02.b                                                  ; $fbbf : $02, $02
	ora $01                                                  ; $fbc1 : $05, $01
	.db $00                                                  ; $fbc3 : $00
	.db $00                                                  ; $fbc4 : $00
	asl $06                                                  ; $fbc5 : $06, $06
	asl $06                                                  ; $fbc7 : $06, $06
	asl $06                                                  ; $fbc9 : $06, $06
	ora $00, S                                                  ; $fbcb : $03, $00
	cop $02.b                                                  ; $fbcd : $02, $02
	cop $02.b                                                  ; $fbcf : $02, $02
	tsb $00                                                  ; $fbd1 : $04, $00
	.db $00                                                  ; $fbd3 : $00
	ora ($00, X)                                                  ; $fbd4 : $01, $00
	ora [$07]                                                  ; $fbd6 : $07, $07
	ora [$07]                                                  ; $fbd8 : $07, $07
	ora [$04]                                                  ; $fbda : $07, $04
	ora ($00, X)                                                  ; $fbdc : $01, $00
	php                                                  ; $fbde : $08
	php                                                  ; $fbdf : $08
	php                                                  ; $fbe0 : $08
	php                                                  ; $fbe1 : $08
	php                                                  ; $fbe2 : $08
	php                                                  ; $fbe3 : $08
	ora $00, S                                                  ; $fbe4 : $03, $00
	cop $02.b                                                  ; $fbe6 : $02, $02

br_4f_fbe8:
	cop $02.b                                                  ; $fbe8 : $02, $02
	cop $01.b                                                  ; $fbea : $02, $01
	.db $00                                                  ; $fbec : $00
	ora $05                                                  ; $fbed : $05, $05
	ora $05                                                  ; $fbef : $05, $05
	.db $00                                                  ; $fbf1 : $00
	ora #$09.b                                                  ; $fbf2 : $09, $09
	ora #$09.b                                                  ; $fbf4 : $09, $09
	ora #$09.b                                                  ; $fbf6 : $09, $09
	ora #$09.b                                                  ; $fbf8 : $09, $09
	ora #$09.b                                                  ; $fbfa : $09, $09
	tsb $00                                                  ; $fbfc : $04, $00
	asl                                                  ; $fbfe : $0a
	asl                                                  ; $fbff : $0a
	asl                                                  ; $fc00 : $0a
	asl                                                  ; $fc01 : $0a
	asl                                                  ; $fc02 : $0a
	asl                                                  ; $fc03 : $0a
	ora ($00, X)                                                  ; $fc04 : $01, $00
	.db $00                                                  ; $fc06 : $00
	cop $02.b                                                  ; $fc07 : $02, $02
	cop $02.b                                                  ; $fc09 : $02, $02
	cop $02.b                                                  ; $fc0b : $02, $02
	cop $01.b                                                  ; $fc0d : $02, $01
	.db $00                                                  ; $fc0f : $00
	ora ($00, X)                                                  ; $fc10 : $01, $00
	.db $00                                                  ; $fc12 : $00
	phd                                                  ; $fc13 : $0b
	phd                                                  ; $fc14 : $0b
	phd                                                  ; $fc15 : $0b
	phd                                                  ; $fc16 : $0b
	phd                                                  ; $fc17 : $0b
	phd                                                  ; $fc18 : $0b
	ora $00, S                                                  ; $fc19 : $03, $00
	ora [$07]                                                  ; $fc1b : $07, $07
	ora [$07]                                                  ; $fc1d : $07, $07
	tsb $01                                                  ; $fc1f : $04, $01
	.db $00                                                  ; $fc21 : $00
	ora $00                                                  ; $fc22 : $05, $00
	.db $00                                                  ; $fc24 : $00

br_4f_fc25:
	cop $02.b                                                  ; $fc25 : $02, $02

br_4f_fc27:
	cop $02.b                                                  ; $fc27 : $02, $02
	cop $02.b                                                  ; $fc29 : $02, $02
	ora ($00, X)                                                  ; $fc2b : $01, $00
	.db $00                                                  ; $fc2d : $00
	ora ($00, X)                                                  ; $fc2e : $01, $00
	ora ($00, X)                                                  ; $fc30 : $01, $00
	ora $05                                                  ; $fc32 : $05, $05
	ora $05                                                  ; $fc34 : $05, $05
	ora $01                                                  ; $fc36 : $05, $01
	.db $00                                                  ; $fc38 : $00
	.db $00                                                  ; $fc39 : $00
	tsb $0c0c.w                                                  ; $fc3a : $0c, $0c, $0c
	tsb $040c.w                                                  ; $fc3d : $0c, $0c, $04
	ora ($03, X)                                                  ; $fc40 : $01, $03
	.db $00                                                  ; $fc42 : $00
	ora $00, S                                                  ; $fc43 : $03, $00
	.db $00                                                  ; $fc45 : $00

br_4f_fc46:
	ora ($00, X)                                                  ; $fc46 : $01, $00
	ora $0200.w                                                  ; $fc48 : $0d, $00, $02
	cop $03.b                                                  ; $fc4b : $02, $03
	.db $00                                                  ; $fc4d : $00
	ora [$07]                                                  ; $fc4e : $07, $07
	ora [$07]                                                  ; $fc50 : $07, $07
	ora ($00, X)                                                  ; $fc52 : $01, $00
	asl $0707.w                                                  ; $fc54 : $0e, $07, $07
	ora [$07]                                                  ; $fc57 : $07, $07
	ora $05                                                  ; $fc59 : $05, $05
	ora $00, S                                                  ; $fc5b : $03, $00
	.db $00                                                  ; $fc5d : $00
	ora $0f0f0f.l                                                  ; $fc5e : $0f, $0f, $0f, $0f
	ora $00010f.l                                                  ; $fc62 : $0f, $0f, $01, $00
	.db $00                                                  ; $fc66 : $00
	cop $02.b                                                  ; $fc67 : $02, $02
	cop $02.b                                                  ; $fc69 : $02, $02
	cop $02.b                                                  ; $fc6b : $02, $02
	cop $0e.b                                                  ; $fc6d : $02, $0e
	bpl br_4f_fc81                                                  ; $fc6f : $10, $10

	asl $100e.w                                                  ; $fc71 : $0e, $0e, $10
	bpl br_4f_fc76                                                  ; $fc74 : $10, $00

br_4f_fc76:
	ora ($0e, X)                                                  ; $fc76 : $01, $0e
	ora $05                                                  ; $fc78 : $05, $05
	ora $05                                                  ; $fc7a : $05, $05
	ora ($00, X)                                                  ; $fc7c : $01, $00
	ora $00, S                                                  ; $fc7e : $03, $00
	.db $00                                                  ; $fc80 : $00

br_4f_fc81:
	.db $00                                                  ; $fc81 : $00
	.db $00                                                  ; $fc82 : $00
	.db $00                                                  ; $fc83 : $00
	.db $00                                                  ; $fc84 : $00
	.db $00                                                  ; $fc85 : $00
	.db $00                                                  ; $fc86 : $00
	.db $00                                                  ; $fc87 : $00
	.db $00                                                  ; $fc88 : $00
	.db $00                                                  ; $fc89 : $00
	.db $00                                                  ; $fc8a : $00

br_4f_fc8b:
	.db $00                                                  ; $fc8b : $00
	.db $00                                                  ; $fc8c : $00
	.db $00                                                  ; $fc8d : $00
	.db $00                                                  ; $fc8e : $00
	.db $00                                                  ; $fc8f : $00
	ora ($11), Y                                                  ; $fc90 : $11, $11
	ora ($00)                                                  ; $fc92 : $12, $00
	asl $0200.w                                                  ; $fc94 : $0e, $00, $02
	.db $00                                                  ; $fc97 : $00
	bra br_4f_fc25                                                  ; $fc98 : $80, $8b

	bne br_4f_fc27                                                  ; $fc9a : $d0, $8b

	adc ($8c)                                                  ; $fc9c : $72, $8c
	lda $8c, X                                                  ; $fc9e : $b5, $8c
	cpx #$8f8e.w                                                  ; $fca0 : $e0, $8e, $8f
	sta $158fd2.l                                                  ; $fca3 : $8f, $d2, $8f, $15
	.db $90, $58                                                  ; $fca7 : $90, $58

	bcc br_4f_fc46                                                  ; $fca9 : $90, $9b

	bcc br_4f_fc8b                                                  ; $fcab : $90, $de

	.db $90, $21                                                  ; $fcad : $90, $21

	sta ($64), Y                                                  ; $fcaf : $91, $64
	sta ($b4), Y                                                  ; $fcb1 : $91, $b4
	sta ($97), Y                                                  ; $fcb3 : $91, $97
	sta ($da)                                                  ; $fcb5 : $92, $da
	sta ($fd)                                                  ; $fcb7 : $92, $fd
	sta ($2c, S), Y                                                  ; $fcb9 : $93, $2c
	sta $00, X                                                  ; $fcbb : $95, $00
	.db $80, $92                                                  ; $fcbd : $80, $92

	sbc ($ed), Y                                                  ; $fcbf : $f1, $ed
	sty $ec, X                                                  ; $fcc1 : $94, $ec
	lda ($94), Y                                                  ; $fcc3 : $b1, $94
	lda $93bf.w, X                                                  ; $fcc5 : $bd, $bf, $93
	sed                                                  ; $fcc8 : $f8
	stp                                                  ; $fcc9 : $db
	sta ($a8)                                                  ; $fcca : $92, $a8
	lda $ae91.w, X                                                  ; $fccc : $bd, $91, $ae
	ldx $92, Y                                                  ; $fccf : $b6, $92
	tya                                                  ; $fcd1 : $98
	stx $94                                                  ; $fcd2 : $86, $94
	ply                                                  ; $fcd4 : $7a
	tax                                                  ; $fcd5 : $aa
	sty $9a, X                                                  ; $fcd6 : $94, $9a
	cmp ($94, S), Y                                                  ; $fcd8 : $d3, $94
	phd                                                  ; $fcda : $0b
	cld                                                  ; $fcdb : $d8
	sta ($00), Y                                                  ; $fcdc : $91, $00
	.db $80, $93                                                  ; $fcde : $80, $93

	ror $90                                                  ; $fce0 : $66, $90
	sta ($09, S), Y                                                  ; $fce2 : $93, $09
	xba                                                  ; $fce4 : $eb
	sty $aa, X                                                  ; $fce5 : $94, $aa
	sbc $94, S                                                  ; $fce7 : $e3, $94
	cpy #$94d7.w                                                  ; $fce9 : $c0, $d7, $94
	adc ($b3)                                                  ; $fcec : $72, $b3
	sta ($24), Y                                                  ; $fcee : $91, $24
	sta [$93]                                                  ; $fcf0 : $87, $93
	sei                                                  ; $fcf2 : $78
	ldy $93                                                  ; $fcf3 : $a4, $93
	adc $d9, S                                                  ; $fcf5 : $63, $d9
	sta ($47)                                                  ; $fcf7 : $92, $47
	plb                                                  ; $fcf9 : $ab
	sta ($7c)                                                  ; $fcfa : $92, $7c

br_4f_fcfc:
	wai                                                  ; $fcfc : $cb
	sty $35, X                                                  ; $fcfd : $94, $35
	cmp $9794.w, X                                                  ; $fcff : $dd, $94, $97
	cpy #$e094.w                                                  ; $fd02 : $c0, $94, $e0
	lda ($92, S), Y                                                  ; $fd05 : $b3, $92
	dea                                                  ; $fd07 : $3a
	lda $cc5493.l                                                  ; $fd08 : $af, $93, $54, $cc
	sta ($af)                                                  ; $fd0c : $92, $af
	sta $ae92.w, Y                                                  ; $fd0e : $99, $92, $ae
	nop                                                  ; $fd11 : $ea
	sta ($b9), Y                                                  ; $fd12 : $91, $b9
	.db $b0, $94                                                  ; $fd14 : $b0, $94

br_4f_fd16:
	cli                                                  ; $fd16 : $58
	cmp $d494.w                                                  ; $fd17 : $cd, $94, $d4
	lda [$94]                                                  ; $fd1a : $a7, $94
	rep #$a3.b                                                  ; $fd1c : $c2, $a3
	sty $00, X                                                  ; $fd1e : $94, $00
	.db $80, $94                                                  ; $fd20 : $80, $94

	lda $bb, S                                                  ; $fd22 : $a3, $bb
	sta ($05, S), Y                                                  ; $fd24 : $93, $05
	sta $94, X                                                  ; $fd26 : $95, $94
	adc ($be, S), Y                                                  ; $fd28 : $73, $be
	sty $17, X                                                  ; $fd2a : $94, $17
	stz $7c94.w, X                                                  ; $fd2c : $9e, $94, $7c
	bit #$5593.w                                                  ; $fd2f : $89, $93, $55
	stp                                                  ; $fd32 : $db
	sta ($d7, S), Y                                                  ; $fd33 : $93, $d7
	cmp $93                                                  ; $fd35 : $c5, $93
	sta [$d7]                                                  ; $fd37 : $87, $d7
	sta ($8b, S), Y                                                  ; $fd39 : $93, $8b
	sbc [$92], Y                                                  ; $fd3b : $f7, $92

br_4f_fd3d:
	.db $00                                                  ; $fd3d : $00
	sbc $94, S                                                  ; $fd3e : $e3, $94
	ora [$a8]                                                  ; $fd40 : $07, $a8
	sta ($7b), Y                                                  ; $fd42 : $91, $7b
	sta ($94, S), Y                                                  ; $fd44 : $93, $94
	adc $92b9.w, Y                                                  ; $fd46 : $79, $b9, $92
	and $91d4.w                                                  ; $fd49 : $2d, $d4, $91
	plb                                                  ; $fd4c : $ab
	sbc ($92)                                                  ; $fd4d : $f2, $92
	ror $fc                                                  ; $fd4f : $66, $fc
	sta ($39), Y                                                  ; $fd51 : $91, $39
	xba                                                  ; $fd53 : $eb
	sta ($98)                                                  ; $fd54 : $92, $98
	ldx #$8092.w                                                  ; $fd56 : $a2, $92, $80
	lda $92                                                  ; $fd59 : $a5, $92
	sta $4d94ea.l                                                  ; $fd5b : $8f, $ea, $94, $4d
	cpx $94                                                  ; $fd5f : $e4, $94
	cmp ($fe)                                                  ; $fd61 : $d2, $fe
	sta ($3d)                                                  ; $fd63 : $92, $3d
	nop                                                  ; $fd65 : $ea
	sta ($37, S), Y                                                  ; $fd66 : $93, $37
	beq br_4f_fcfc                                                  ; $fd68 : $f0, $92

	bcc br_4f_fd3d                                                  ; $fd6a : $90, $d1

	sta ($a2)                                                  ; $fd6c : $92, $a2
	ldx $93                                                  ; $fd6e : $a6, $93
	and $93dd.w, Y                                                  ; $fd70 : $39, $dd, $93
	adc ($f1), Y                                                  ; $fd73 : $71, $f1
	sta ($87, S), Y                                                  ; $fd75 : $93, $87
	lda $d47494.l, X                                                  ; $fd77 : $bf, $94, $74, $d4
	sty $dc, X                                                  ; $fd7b : $94, $dc
	bit #$5294.w                                                  ; $fd7d : $89, $94, $52
	bcc br_4f_fd16                                                  ; $fd80 : $90, $94

	ora $93df.w, X                                                  ; $fd82 : $1d, $df, $93
	tsb $93fa.w                                                  ; $fd85 : $0c, $fa, $93

br_4f_fd88:
	cmp ($cf), Y                                                  ; $fd88 : $d1, $cf
	sta ($f2, S), Y                                                  ; $fd8a : $93, $f2
	lda $6291.w                                                  ; $fd8c : $ad, $91, $62
	sta $92, S                                                  ; $fd8f : $83, $92
	cpx #$93c9.w                                                  ; $fd91 : $e0, $c9, $93
	lda $929c.w                                                  ; $fd94 : $ad, $9c, $92
	jmp $91ee.w                                                  ; $fd97 : $4c, $ee, $91


	ror                                                  ; $fd9a : $6a
	sta $b693.w, Y                                                  ; $fd9b : $99, $93, $b6
	dec $c894.w, X                                                  ; $fd9e : $de, $94, $c8
	dec $92, X                                                  ; $fda1 : $d6, $92
	lda $92e8.w, Y                                                  ; $fda3 : $b9, $e8, $92
	asl $93ad.w, X                                                  ; $fda6 : $1e, $ad, $93
	adc $a8                                                  ; $fda9 : $65, $a8
	sta ($e6)                                                  ; $fdab : $92, $e6
	clv                                                  ; $fdad : $b8
	sty $52, X                                                  ; $fdae : $94, $52
	lda ($93), Y                                                  ; $fdb0 : $b1, $93
	plx                                                  ; $fdb2 : $fa
	sbc $3a92.w, Y                                                  ; $fdb3 : $f9, $92, $3a
	dey                                                  ; $fdb6 : $88
	sty $bc, X                                                  ; $fdb7 : $94, $bc
	cmp $94                                                  ; $fdb9 : $c5, $94
	rtl                                                  ; $fdbb : $6b


	cpy $5d94.w                                                  ; $fdbc : $cc, $94, $5d
	lda $5994.w, X                                                  ; $fdbf : $bd, $94, $59
	sbc [$94]                                                  ; $fdc2 : $e7, $94
	ora #$92b1.w                                                  ; $fdc4 : $09, $b1, $92
	inc $9394.w                                                  ; $fdc7 : $ee, $94, $93
	lda $0293d1.l, X                                                  ; $fdca : $bf, $d1, $93, $02
	cmp [$92]                                                  ; $fdce : $c7, $92
	ora ($a0), Y                                                  ; $fdd0 : $11, $a0
	sta ($af, S), Y                                                  ; $fdd2 : $93, $af
	rep #$94.b                                                  ; $fdd4 : $c2, $94
	sty $92de.w                                                  ; $fdd6 : $8c, $de, $92
	bpl br_4f_fd88                                                  ; $fdd9 : $10, $ad

	sty $2a, X                                                  ; $fddb : $94, $2a
	lda #$f694.w                                                  ; $fddd : $a9, $94, $f6
	tax                                                  ; $fde0 : $aa
	sta ($f3, S), Y                                                  ; $fde1 : $93, $f3

br_4f_fde3:
	dec $2892.w                                                  ; $fde3 : $ce, $92, $28
	ldx $c792.w                                                  ; $fde6 : $ae, $92, $c7
	inc $94                                                  ; $fde9 : $e6, $94
	adc $b5, X                                                  ; $fdeb : $75, $b5
	sta ($7b, S), Y                                                  ; $fded : $93, $7b
	phb                                                  ; $fdef : $8b
	sty $75, X                                                  ; $fdf0 : $94, $75
	cmp $8d1894.l, X                                                  ; $fdf2 : $df, $94, $18, $8d
	sty $69, X                                                  ; $fdf6 : $94, $69
	.db $82                                                  ; $fdf8 : $82

	sta ($1d, S), Y                                                  ; $fdf9 : $93, $1d
	sbc ($92, X)                                                  ; $fdfb : $e1, $92
	beq br_4f_fde3                                                  ; $fdfd : $f0, $e4

	sty $30, X                                                  ; $fdff : $94, $30
	cpx #$6494.w                                                  ; $fe01 : $e0, $94, $64
	sbc $df93.w, X                                                  ; $fe04 : $fd, $93, $df
	cmp $6f93.w                                                  ; $fe07 : $cd, $93, $6f
	cmp $dc93.w, Y                                                  ; $fe0a : $d9, $93, $dc
	cmp [$93]                                                  ; $fe0d : $c7, $93
	lda $3694c7.l                                                  ; $fe0f : $af, $c7, $94, $36
	ldy $2392.w, X                                                  ; $fe13 : $bc, $92, $23
	lda $94                                                  ; $fe16 : $a5, $94
	phd                                                  ; $fe18 : $0b
	nop                                                  ; $fe19 : $ea
	sty $0c, X                                                  ; $fe1a : $94, $0c
	cpx $4693.w                                                  ; $fe1c : $ec, $93, $46
	ldx #$ed93.w                                                  ; $fe1f : $a2, $93, $ed
	sed                                                  ; $fe22 : $f8
	sta ($6f), Y                                                  ; $fe23 : $91, $6f
	sbc $91, X                                                  ; $fe25 : $f5, $91
	stx $94e5.w                                                  ; $fe27 : $8e, $e5, $94
	xba                                                  ; $fe2a : $eb
	wai                                                  ; $fe2b : $cb
	sta ($a9), Y                                                  ; $fe2c : $91, $a9
	sta ($94, X)                                                  ; $fe2e : $81, $94

br_4f_fe30:
	bit $9397.w                                                  ; $fe30 : $2c, $97, $93
	ldx #$939b.w                                                  ; $fe33 : $a2, $9b, $93
	eor $94ae.w                                                  ; $fe36 : $4d, $ae, $94
	asl $d0, X                                                  ; $fe39 : $16, $d0
	sty $95, X                                                  ; $fe3b : $94, $95
	lda $ab93.w, Y                                                  ; $fe3d : $b9, $93, $ab
	cmp #$0892.w                                                  ; $fe40 : $c9, $92, $08
	tsx                                                  ; $fe43 : $ba
	sty $8e, X                                                  ; $fe44 : $94, $8e
	stx $94, Y                                                  ; $fe46 : $96, $94
	cmp $8a94d1.l, X                                                  ; $fe48 : $df, $d1, $94, $8a
	dex                                                  ; $fe4c : $ca
	sty $28, X                                                  ; $fe4d : $94, $28
	tyx                                                  ; $fe4f : $bb
	sty $f9, X                                                  ; $fe50 : $94, $f9
	ldy #$8c94.w                                                  ; $fe52 : $a0, $94, $8c
	sta $937894.l, X                                                  ; $fe55 : $9f, $94, $78, $93
	sta ($9a)                                                  ; $fe59 : $92, $9a
	ldx $94, Y                                                  ; $fe5b : $b6, $94
	.db $f0, $d6                                                  ; $fe5d : $f0, $d6

	sty $38, X                                                  ; $fe5f : $94, $38
	inc $92                                                  ; $fe61 : $e6, $92
	txa                                                  ; $fe63 : $8a
	cmp $f1e691.l, X                                                  ; $fe64 : $df, $91, $e6, $f1
	sta ($cd), Y                                                  ; $fe68 : $91, $cd
	stp                                                  ; $fe6a : $db
	sta ($8c), Y                                                  ; $fe6b : $91, $8c
	rep #$91.b                                                  ; $fe6d : $c2, $91
	lda [$c3], Y                                                  ; $fe6f : $b7, $c3
	sty $fd, X                                                  ; $fe71 : $94, $fd
	inc $91                                                  ; $fe73 : $e6, $91
	adc $94eb.w, X                                                  ; $fe75 : $7d, $eb, $94
	eor $ce, S                                                  ; $fe78 : $43, $ce
	sty $b0, X                                                  ; $fe7a : $94, $b0
	inc $93, X                                                  ; $fe7c : $f6, $93
	ora $98, X                                                  ; $fe7e : $15, $98
	sty $ee, X                                                  ; $fe80 : $94, $ee
	sta ($94), Y                                                  ; $fe82 : $91, $94
	wai                                                  ; $fe84 : $cb
	sty $93                                                  ; $fe85 : $84, $93
	sbc $94e8.w, X                                                  ; $fe87 : $fd, $e8, $94
	cmp ($b7, X)                                                  ; $fe8a : $c1, $b7
	sty $1e, X                                                  ; $fe8c : $94, $1e
	lda ($94, S), Y                                                  ; $fe8e : $b3, $94
	rol $94cf.w                                                  ; $fe90 : $2e, $cf, $94
	inx                                                  ; $fe93 : $e8
	cpx #$5794.w                                                  ; $fe94 : $e0, $94, $57
	cpx $3594.w                                                  ; $fe97 : $ec, $94, $35
	beq br_4f_fe30                                                  ; $fe9a : $f0, $94

	pha                                                  ; $fe9c : $48
	cmp [$91]                                                  ; $fe9d : $c7, $91
	asl $938e.w, X                                                  ; $fe9f : $1e, $8e, $93
	and $d0                                                  ; $fea2 : $25, $d0
	sta ($2c), Y                                                  ; $fea4 : $91, $2c
	pei ($92)                                                  ; $fea6 : $d4, $92
	sbc $93f4.w, X                                                  ; $fea8 : $fd, $f4, $93
	sty $af                                                  ; $feab : $84, $af
	sty $cd, X                                                  ; $fead : $94, $cd
	phb                                                  ; $feaf : $8b
	sta ($e7, S), Y                                                  ; $feb0 : $93, $e7
	sbc [$94]                                                  ; $feb2 : $e7, $94
	tsc                                                  ; $feb4 : $3b
	sbc ($93, S), Y                                                  ; $feb5 : $f3, $93
	.db $b0, $bd                                                  ; $feb7 : $b0, $bd

	sta ($b8, S), Y                                                  ; $feb9 : $93, $b8
	sbc $9f92.w                                                  ; $febb : $ed, $92, $9f
	stz $5e94.w                                                  ; $febe : $9c, $94, $5e
	sed                                                  ; $fec1 : $f8
	sta ($52, S), Y                                                  ; $fec2 : $93, $52
	sep #$94.b                                                  ; $fec4 : $e2, $94

br_4f_fec6:
	adc $94f0.w, Y                                                  ; $fec6 : $79, $f0, $94
	sbc $9289.w, X                                                  ; $fec9 : $fd, $89, $92
	phx                                                  ; $fecc : $da
	sta $bb93.w, X                                                  ; $fecd : $9d, $93, $bb
	stx $92                                                  ; $fed0 : $86, $92
	cpx $94da.w                                                  ; $fed2 : $ec, $da, $94
	.db $00                                                  ; $fed5 : $00
	sbc ($93, X)                                                  ; $fed6 : $e1, $93
	sbc ($be), Y                                                  ; $fed8 : $f1, $be
	sta ($4a)                                                  ; $feda : $92, $4a
	ldy $94, X                                                  ; $fedc : $b4, $94
	rol $da                                                  ; $fede : $26, $da
	sty $8d, X                                                  ; $fee0 : $94, $8d
	sbc $e094.w                                                  ; $fee2 : $ed, $94, $e0
	wai                                                  ; $fee5 : $cb
	sta ($c8, S), Y                                                  ; $fee6 : $93, $c8
	cmp ($93, X)                                                  ; $fee8 : $c1, $93
	lda $93d3.w                                                  ; $feea : $ad, $d3, $93
	stz $b3                                                  ; $feed : $64, $b3
	sta ($85, S), Y                                                  ; $feef : $93, $85
	lda [$93], Y                                                  ; $fef1 : $b7, $93
	ldx $c1                                                  ; $fef3 : $a6, $c1
	sta ($7c)                                                  ; $fef5 : $92, $7c
	ldx $94                                                  ; $fef7 : $a6, $94
	ldy $c8                                                  ; $fef9 : $a4, $c8
	sty $73, X                                                  ; $fefb : $94, $73
	jml [$5594.w]                                                  ; $fefd : $dc, $94, $55


	cpy $92                                                  ; $ff00 : $c4, $92
	eor ($90)                                                  ; $ff02 : $52, $90

Call_4f_ff04:
	sta ($d1)                                                  ; $ff04 : $92, $d1
	cmp $93, S                                                  ; $ff06 : $c3, $93
	lda $92e3.w                                                  ; $ff08 : $ad, $e3, $92
	adc ($e8, S), Y                                                  ; $ff0b : $73, $e8
	sty $b0, X                                                  ; $ff0d : $94, $b0
	stp                                                  ; $ff0f : $db

Call_4f_ff10:
	sty $b8, X                                                  ; $ff10 : $94, $b8
	xce                                                  ; $ff12 : $fb
	sta ($c1, S), Y                                                  ; $ff13 : $93, $c1
	cpx $8694.w                                                  ; $ff15 : $ec, $94, $86
	sbc #$4594.w                                                  ; $ff18 : $e9, $94, $45
	ldy $ea94.w, X                                                  ; $ff1b : $bc, $94, $ea
	xba                                                  ; $ff1e : $eb
	sty $a7, X                                                  ; $ff1f : $94, $a7
	sta $999b92.l, X                                                  ; $ff21 : $9f, $92, $9b, $99
	sty $f2, X                                                  ; $ff25 : $94, $f2
	inc $fd94.w                                                  ; $ff27 : $ee, $94, $fd
	.db $d0, $94                                                  ; $ff2a : $d0, $94

	ldy #$e1.b                                                  ; $ff2c : $a0, $e1
	sty $bd, X                                                  ; $ff2e : $94, $bd

Call_4f_ff30:
	beq br_4f_fec6                                                  ; $ff30 : $f0, $94

	cmp $93e2.w, X                                                  ; $ff32 : $dd, $e2, $93
	txy                                                  ; $ff35 : $9b
	stx $92, Y                                                  ; $ff36 : $96, $92
	lsr $e3                                                  ; $ff38 : $46, $e3
	sta ($cc), Y                                                  ; $ff3a : $91, $cc
	tay                                                  ; $ff3c : $a8
	sta ($2a, S), Y                                                  ; $ff3d : $93, $2a
	sta $4492.w                                                  ; $ff3f : $8d, $92, $44
	sbc $c1a694.l                                                  ; $ff42 : $ef, $94, $a6, $c1

Call_4f_ff46:
	sty $d9, X                                                  ; $ff46 : $94, $d9
	sbc $6993.w                                                  ; $ff48 : $ed, $93, $69
	inx                                                  ; $ff4b : $e8
	sta ($5e, S), Y                                                  ; $ff4c : $93, $5e
	ldx #$94.b                                                  ; $ff4e : $a2, $94
	lda $94c6.w, Y                                                  ; $ff50 : $b9, $c6, $94
	lda $8e, X                                                  ; $ff53 : $b5, $8e
	sty $4f, X                                                  ; $ff55 : $94, $4f
	sta $94, S                                                  ; $ff57 : $83, $94
	lda $ef                                                  ; $ff59 : $a5, $ef
	sta ($be, S), Y                                                  ; $ff5b : $93, $be
	cpy $94                                                  ; $ff5d : $c4, $94
	tsx                                                  ; $ff5f : $ba
	cpx $93                                                  ; $ff60 : $e4, $93
	pea $9484.w                                                  ; $ff62 : $f4, $84, $94
	adc [$fc]                                                  ; $ff65 : $67, $fc
	sta ($92)                                                  ; $ff67 : $92, $92
	inc $93                                                  ; $ff69 : $e6, $93
	ldy $9392.w                                                  ; $ff6b : $ac, $92, $93
	jmp $94ee.w                                                  ; $ff6e : $4c, $ee, $94


	asl $949b.w, X                                                  ; $ff71 : $1e, $9b, $94
	bit $94e6.w                                                  ; $ff74 : $2c, $e6, $94
	stx $94d8.w                                                  ; $ff77 : $8e, $d8, $94
	ora $1b93ff.l                                                  ; $ff7a : $0f, $ff, $93, $1b
	sbc $92, X                                                  ; $ff7e : $f5, $92
	adc ($b5)                                                  ; $ff80 : $72, $b5
	sty $fd, X                                                  ; $ff82 : $94, $fd
	.db $f0, $94                                                  ; $ff84 : $f0, $94

	stx $ef, Y                                                  ; $ff86 : $96, $ef
	sty $27, X                                                  ; $ff88 : $94, $27
	sbc $c794.w                                                  ; $ff8a : $ed, $94, $c7
	plb                                                  ; $ff8d : $ab
	sty $e8, X                                                  ; $ff8e : $94, $e8
	sbc $061d94.l                                                  ; $ff90 : $ef, $94, $1d, $06
	tsc                                                  ; $ff94 : $3b
	.db $00                                                  ; $ff95 : $00
	asl $d1                                                  ; $ff96 : $06, $d1
	asl $b1                                                  ; $ff98 : $06, $b1
	.db $00                                                  ; $ff9a : $00
	ora $d3                                                  ; $ff9b : $05, $d3
	ora $92                                                  ; $ff9d : $05, $92
	ora $72                                                  ; $ff9f : $05, $72
	ora $5f                                                  ; $ffa1 : $05, $5f
	.db $00                                                  ; $ffa3 : $00
	asl $0c                                                  ; $ffa4 : $06, $0c
	ora $76                                                  ; $ffa6 : $05, $76
	asl $e6                                                  ; $ffa8 : $06, $e6
	.db $00                                                  ; $ffaa : $00
	ora [$3b]                                                  ; $ffab : $07, $3b
	asl $b3                                                  ; $ffad : $06, $b3
	.db $00                                                  ; $ffaf : $00
	ora $95                                                  ; $ffb0 : $05, $95
	ora $96                                                  ; $ffb2 : $05, $96
	ora $bc                                                  ; $ffb4 : $05, $bc
	ora $c2                                                  ; $ffb6 : $05, $c2
	.db $00                                                  ; $ffb8 : $00
	ora $15                                                  ; $ffb9 : $05, $15
	ora $15                                                  ; $ffbb : $05, $15
	ora $15                                                  ; $ffbd : $05, $15
	.db $00                                                  ; $ffbf : $00

Call_4f_ffc0:
	asl $f4                                                  ; $ffc0 : $06, $f4
	asl $33                                                  ; $ffc2 : $06, $33
	.db $00                                                  ; $ffc4 : $00
	asl $1d                                                  ; $ffc5 : $06, $1d
	asl $a8                                                  ; $ffc7 : $06, $a8
	.db $00                                                  ; $ffc9 : $00
	php                                                  ; $ffca : $08
	bit $06                                                  ; $ffcb : $24, $06
	bit $00, X                                                  ; $ffcd : $34, $00
	ora [$12]                                                  ; $ffcf : $07, $12
	ora $66                                                  ; $ffd1 : $05, $66
	asl $34                                                  ; $ffd3 : $06, $34
	.db $00                                                  ; $ffd5 : $00
	asl $bf                                                  ; $ffd6 : $06, $bf
	asl $34                                                  ; $ffd8 : $06, $34
	.db $00                                                  ; $ffda : $00
	ora $11                                                  ; $ffdb : $05, $11
	ora $11                                                  ; $ffdd : $05, $11
	.db $00                                                  ; $ffdf : $00
	ora $11                                                  ; $ffe0 : $05, $11
	ora $11                                                  ; $ffe2 : $05, $11
	ora $11                                                  ; $ffe4 : $05, $11
	.db $00                                                  ; $ffe6 : $00
	ora $16                                                  ; $ffe7 : $05, $16
	ora $16                                                  ; $ffe9 : $05, $16
	ora $16                                                  ; $ffeb : $05, $16
	.db $00                                                  ; $ffed : $00
	asl $0d                                                  ; $ffee : $06, $0d
	php                                                  ; $fff0 : $08
	tsb $08                                                  ; $fff1 : $04, $08
	adc $00                                                  ; $fff3 : $65, $00
	.db $50                                                  ; $fff5 : $50

	eor ($58, X)                                                  ; $fff6 : $41, $58
	ora ($06, X)                                                  ; $fff8 : $01, $06
	.db $00                                                  ; $fffa : $00
	ora ($21, X)                                                  ; $fffb : $01, $21
	phd                                                  ; $fffd : $0b
	ora ($00, X)                                                  ; $fffe : $01, $00
