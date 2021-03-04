<CsoundSynthesizer>
<CsInstruments>
sr = 1
kr = 1
ksmps = 1

instr 1
iHash = -23808
iSpace = -24576
aNewline = -30208
iInf = 32767
kInf = 32767
iWidth tab_i 0, 1
iHeight tab_i 1, 1
iRestbl ftgen 2, 0, 32, -7, iHash, iWidth, iHash, 0, iInf, 1, iInf, 0

aRes osciln 1, 1, iRestbl, iWidth+2
kRes vaget 0, aRes
if (kRes == kInf) then
  out aNewline
  if (iHeight == 1) then
    event "e", 1, 0, 0
  elseif (iHeight == 2) then
    event "i", 3, 0, 128
  else
    event "i", 2, 0, 128, iHeight-2
  endif
else
  out aRes
endif
endin

instr 2
iHash = -23808
iSpace = -24576
aNewline = -30208
iInf = 32767
kInf = 32767
iWidth tab_i 0, 1
iHeight tab_i 1, 1
iRestbl ftgen 2, 0, 32, -7, iHash, 1, iHash, 0, iSpace, iWidth-2, iSpace, 0, iHash, 1, iHash, 0, iInf, 1, iInf, 0

aRes osciln 1, 1, iRestbl, iWidth+2
kRes vaget 0, aRes
if (kRes == kInf) then
  out aNewline
  if (p4 <= 1) then
    event "i", 3, 0, 128
  else
    event "i", 2, 0, 128, p4-1
  endif
else
  out aRes
endif
endin

instr 3
iHash = -23808
iSpace = -24576
aNewline = -30208
iInf = 32767
kInf = 32767
iWidth tab_i 0, 1
iHeight tab_i 1, 1
iRestbl ftgen 2, 0, 32, -7, iHash, iWidth, iHash, 0, iInf, 1, iInf, 0

aRes osciln 1, 1, iRestbl, iWidth+2
kRes vaget 0, aRes
if (kRes == kInf) then
  out aNewline
  event "e", 1, 0, 0
else
  out aRes
endif
endin

</CsInstruments>

<CsScore>
f 1 0 0 -23 "input.in"
i 1 0 128
</CsScore>
</CsoundSynthesizer>
