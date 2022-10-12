# Need to figure out the bidirectional part
# Such a pain to make the Z and N cases work (TODO)
f = ->s {
  s = s.upcase
  h = Hash[*"S 9 F 1 H 5 X = N :) Z {N} M --* G ] T [".split(" ")]
  (h.keys.any? { |w| s[w] } ? h : h.invert).each { |k, v| s[k] &&= v }; s
}
