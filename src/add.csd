<CsoundSynthesizer>
<CsInstruments>
sr = 1
kr = 1
ksmps = 1

instr 1
kNine = -18176
kZero = -20480
kSpace = -24576
kNewline = -30208

aIn inch 1
aOut init 0
kVal vaget 0, aIn
if (kVal == kSpace) then
  vaset kVal, 0, aOut
elseif (kVal == kNewline) then
  vaset kVal, 0, aOut
elseif (kVal == 0) then
  vaset kVal, 0, aOut
elseif (kVal == kNine) then
  vaset kZero, 0, aOut
else
  vaset kVal+256, 0, aOut
endif
out aOut
endin

</CsInstruments>

<CsScore>
i 1 0 32
</CsScore>
</CsoundSynthesizer>
