;;; greek.el --- Quail package for inputting Greek -*-coding: utf-8-*-

;; Copyright (C) 2001-2019 Free Software Foundation, Inc.
;; Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005,
;;   2006, 2007, 2008, 2009, 2010, 2011
;;   National Institute of Advanced Industrial Science and Technology (AIST)
;;   Registration Number H14PRO021

;; Keywords: multilingual, input method, Greek

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'quail)

(quail-define-package
 "greek-jis" "Greek" "Ω" nil
 "Ελληνικα: Greek keyboard layout (JIS X0208.1983)

The layout is same as greek, but uses JIS characters.
Sorry, accents and terminal sigma are not supported in JIS."
 nil t t t t nil nil nil nil nil t)

(quail-define-rules
 ("1" ?１)
 ("2" ?２)
 ("3" ?３)
 ("4" ?４)
 ("5" ?５)
 ("6" ?６)
 ("7" ?７)
 ("8" ?８)
 ("9" ?９)
 ("0" ?０)
 ("-" ?−)
 ("=" ?＝)
 ("`" ?‘)
 ("q" ?・)
 ("w" ?σ)
 ("e" ?ε)
 ("r" ?ρ)
 ("t" ?τ)
 ("y" ?υ)
 ("u" ?θ)
 ("i" ?ι)
 ("o" ?ο)
 ("p" ?π)
 ("[" ?\［)
 ("]" ?\］)
 ("a" ?α)
 ("s" ?σ)
 ("d" ?δ)
 ("f" ?φ)
 ("g" ?γ)
 ("h" ?η)
 ("j" ?ξ)
 ("k" ?κ)
 ("l" ?λ)
 (";" ?’)
 ("'" ?’)
 ("\\" ?＼)
 ("z" ?ζ)
 ("x" ?χ)
 ("c" ?ψ)
 ("v" ?ω)
 ("b" ?β)
 ("n" ?ν)
 ("m" ?μ)
 ("," ?, )
 ("." ?. )
 ("/" ?／)

 ("!" ?！)
 ("@" ?＠)
 ("#" ?＃)
 ("$" ?＃)
 ("%" ?％)
 ("^" ?＾)
 ("&" ?＆)
 ("*" ?＊)
 ("(" ?\（)
 (")" ?\）)
 ("_" ?＿)
 ("+" ?＋)
 ("~" ?￣)
 ("Q" ?−)
 ("W" ?Σ)
 ("E" ?Ε)
 ("R" ?Ρ)
 ("T" ?Τ)
 ("Y" ?Υ)
 ("U" ?Θ)
 ("I" ?Ι)
 ("O" ?Ο)
 ("P" ?Ρ)
 ("{" ?\｛)
 ("}" ?\｝)
 ("A" ?Α)
 ("S" ?Σ)
 ("D" ?Δ)
 ("F" ?Φ)
 ("G" ?Γ)
 ("H" ?Η)
 ("J" ?Ξ)
 ("K" ?Κ)
 ("L" ?Λ)
 (":" ?”)
 ("\"" ?”)
 ("|" ?｜)
 ("Z" ?Ζ)
 ("X" ?Χ)
 ("C" ?Ψ)
 ("V" ?Ω)
 ("B" ?Β)
 ("N" ?Ν)
 ("M" ?Μ)
 ("<" ?；)
 (">" ?：)
 ("?" ?？))

;;

(quail-define-package "greek-mizuochi" "Greek" "CG" t
"The Mizuochi input method for Classical Greek using mule-unicode-0100-24ff.

-------------------------------------
character     capital	      small
-------------------------------------
alpha		A		a
beta		B		b
gamma		G		g
delta		D		d
epsilon		E		e
zeta		Z		z
eta		H		h
theta		Q		q
iota		I		i
kappa		K		k
lambda		L		l
mu		M		m
nu		N		n
xi		X		x
omicron		O		o
pi		P		p
rho		R		r
sigma		S		s
final sigma			j
tau		T		t
upsilon		U		u
phi		F		f
chi		C		c
psi		Y		y
omega		W		w
-------------------------------------
sampi				!
digamma		#
stigma				$
koppa		&		%
-------------------------------------

------------------------
mark		key
------------------------
ypogegrammeni	J
psili		\\='  or  v
dasia		\\=`  or  V
oxia		/
varia		?
perispomeni	\\  or  ^
dialytika	\"
ano teleia	:
erotimatiko	;
----------------------
"
nil t t nil nil nil nil nil nil nil t)

(quail-define-rules

 ("!" ?ϡ) ; sampi
 ("#" ?Ϝ) ; DIGAMMA
 ("$" ?ϛ) ; stigma
 ("%" ?ϟ) ; koppa
 ("&" ?Ϟ) ; KOPPA
 ("'" ?᾿) ("v" ?᾿) ; psili
 ("/" ?´) ; oxia
 (":" ?·) ; ano teleia
 (";" ?;) ; erotimatiko
 ("\"" ?¨) ; dialytika

 ("A" ?Α)
 ("B" ?Β)
 ("C" ?Χ)
 ("D" ?Δ)
 ("E" ?Ε)
 ("F" ?Φ)
 ("G" ?Γ)
 ("H" ?Η)
 ("I" ?Ι)
 ("wJ" ?ῳ)
 ("K" ?Κ)
 ("L" ?Λ)
 ("M" ?Μ)
 ("N" ?Ν)
 ("O" ?Ο)

 ("P" ?Π)
 ("Q" ?Θ)
 ("R" ?Ρ)
 ("S" ?Σ)
 ("T" ?Τ)
 ("U" ?Υ)
 ("hJ" ?ῃ)
 ("W" ?Ω)
 ("X" ?Ξ)
 ("Y" ?Ψ)
 ("Z" ?Ζ)
 ("?" ?`) ; varia
 ("\\" ?῀) ("^" ?῀) ; perispomeni

 ("`" ?῾) ("V" ?῾) ; dasia
 ("a" ?α)
 ("b" ?β)
 ("c" ?χ)
 ("d" ?δ)
 ("e" ?ε)
 ("f" ?φ)
 ("g" ?γ)
 ("h" ?η)
 ("i" ?ι)
 ("j" ?ς)
 ("k" ?κ)
 ("l" ?λ)
 ("m" ?μ)
 ("n" ?ν)
 ("o" ?ο)

 ("p" ?π)
 ("q" ?θ)
 ("r" ?ρ)
 ("s" ?σ)
 ("t" ?τ)
 ("u" ?υ)
 ("aJ" ?ᾳ)
 ("w" ?ω)
 ("x" ?ξ)
 ("y" ?ψ)
 ("z" ?ζ)

 ("i`" ?ἱ) ("iV" ?ἱ)
 ("i'" ?ἰ) ("iv" ?ἰ)
 ("i/" ?ί)
 ("i`/" ?ἵ) ("iV/" ?ἵ) ("i/`" ?ἵ) ("i/V" ?ἵ)
 ("i'/" ?ἴ) ("iv/" ?ἴ) ("i/'" ?ἴ) ("i/v" ?ἴ)
 ("i?" ?ὶ)
 ("i`?" ?ἳ) ("iV?" ?ἳ) ("i?`" ?ἳ) ("i?V" ?ἳ)
 ("i'?" ?ἲ) ("iv?" ?ἲ) ("i?'" ?ἲ) ("i?v" ?ἲ)
 ("i^"  ?ῖ) ("i\\" ?ῖ)
 ("i`^"  ?ἷ) ("i`\\" ?ἷ) ("iV^"  ?ἷ) ("iV\\" ?ἷ)
 ("i^`"  ?ἷ) ("i\\`" ?ἷ) ("i^V"  ?ἷ) ("i\\V" ?ἷ)
 ("i'^"  ?ἶ) ("i'\\" ?ἶ) ("iv^"  ?ἶ) ("iv\\" ?ἶ)
 ("i^'"  ?ἶ) ("i\\'" ?ἶ) ("i^v"  ?ἶ) ("i\\v" ?ἶ)
 ("i\"" ?ϊ)
 ("i/\"" ?ΐ) ("i\"/" ?ΐ)
 ("i?\"" ?ῒ) ("i\"?" ?ῒ)

 ("^`"  ?῟) ("^V"  ?῟) ("\\`" ?῟) ("\\V" ?῟)
 ("`^"  ?῟) ("V^"  ?῟) ("`\\" ?῟) ("V\\" ?῟)
 ("^'"  ?῏) ("^v"  ?῏) ("\\'" ?῏) ("\\v" ?῏)
 ("'^"  ?῏) ("v^"  ?῏) ("'\\" ?῏) ("v\\" ?῏)
 ("/`" ?῞) ("/V" ?῞) ("`/" ?῞) ("V/" ?῞)
 ("/'" ?῎) ("/v" ?῎) ("'/" ?῎) ("v/" ?῎)
 ("?`" ?῝) ("?V" ?῝) ("`?" ?῝) ("V?" ?῝)
 ("?'" ?῍) ("?v" ?῍) ("'?" ?῍) ("v?" ?῍)
 ("\"/" ?΅) ("/\"" ?΅)
 ("\"?" ?῭) ("?\"" ?῭)

 ("e`" ?ἑ) ("eV" ?ἑ)
 ("e'" ?ἐ) ("ev" ?ἐ)
 ("e/" ?έ)
 ("e/`" ?ἕ) ("e/V" ?ἕ) ("e`/" ?ἕ) ("eV/" ?ἕ)
 ("e/'" ?ἔ) ("e/v" ?ἔ) ("e'/" ?ἔ) ("ev/" ?ἔ)
 ("e?" ?ὲ)
 ("e?`" ?ἓ) ("e?V" ?ἓ) ("e`?" ?ἓ) ("eV?" ?ἓ)
 ("e?'" ?ἒ) ("e?v" ?ἒ) ("e'?" ?ἒ) ("ev?" ?ἒ)

 ("a`" ?ἁ) ("aV" ?ἁ)
 ("a'" ?ἀ) ("av" ?ἀ)
 ("a/" ?ά)
 ("a/`" ?ἅ) ("a/V" ?ἅ) ("a`/" ?ἅ) ("aV/" ?ἅ)
 ("a/'" ?ἄ) ("a/v" ?ἄ) ("a'/" ?ἄ) ("av/" ?ἄ)
 ("a?" ?ὰ)
 ("a?`" ?ἃ) ("a?V" ?ἃ) ("a`?" ?ἃ) ("aV?" ?ἃ)
 ("a?'" ?ἂ) ("a?v" ?ἂ) ("a'?" ?ἂ) ("av?" ?ἂ)
 ("a^"  ?ᾶ) ("a\\" ?ᾶ)
 ("a^`"  ?ἇ) ("a^V"  ?ἇ) ("a\\`" ?ἇ) ("a\\V" ?ἇ)
 ("a`^"  ?ἇ) ("aV^"  ?ἇ) ("a`\\" ?ἇ) ("aV\\" ?ἇ)
 ("a^'"  ?ἆ) ("a^v"  ?ἆ) ("a\\'" ?ἆ) ("a\\v" ?ἆ)
 ("a'^"  ?ἆ) ("av^"  ?ἆ) ("a'\\" ?ἆ) ("av\\" ?ἆ)

 ("aJ`" ?ᾁ) ("aJV" ?ᾁ)
 ("aJ'" ?ᾀ) ("aJv" ?ᾀ)
 ("aJ/" ?ᾴ)
 ("aJ/`" ?ᾅ) ("aJ/V" ?ᾅ) ("aJ`/" ?ᾅ) ("aJV/" ?ᾅ)
 ("aJ/'" ?ᾄ) ("aJ/v" ?ᾄ) ("aJ'/" ?ᾄ) ("aJv/" ?ᾄ)
 ("aJ?" ?ᾲ)
 ("aJ?`" ?ᾃ) ("aJ?V" ?ᾃ) ("aJ`?" ?ᾃ) ("aJV?" ?ᾃ)
 ("aJ?'" ?ᾂ) ("aJ?v" ?ᾂ) ("aJ'?" ?ᾂ) ("aJv?" ?ᾂ)
 ("aJ^"  ?ᾷ) ("aJ\\" ?ᾷ)
 ("aJ^`"  ?ᾇ) ("aJ^V"  ?ᾇ) ("aJ\\`" ?ᾇ) ("aJ\\V" ?ᾇ)
 ("aJ`^"  ?ᾇ) ("aJV^"  ?ᾇ) ("aJ`\\" ?ᾇ) ("aJV\\" ?ᾇ)
 ("aJ^'"  ?ᾆ) ("aJ^v"  ?ᾆ) ("aJ\\'" ?ᾆ) ("aJ\\v" ?ᾆ)
 ("aJ'^"  ?ᾆ) ("aJv^"  ?ᾆ) ("aJ'\\" ?ᾆ) ("aJv\\" ?ᾆ)

 ("r`" ?ῥ) ("rV" ?ῥ)
 ("r'" ?ῤ) ("rv" ?ῤ)

 ("h`" ?ἡ) ("hV" ?ἡ)
 ("h'" ?ἠ) ("hv" ?ἠ)
 ("h/" ?ή)
 ("h/`" ?ἥ) ("h/V" ?ἥ) ("h`/" ?ἥ) ("hV/" ?ἥ)
 ("h/'" ?ἤ) ("h/v" ?ἤ) ("h'/" ?ἤ) ("hv/" ?ἤ)
 ("h?" ?ὴ)
 ("h?`" ?ἣ) ("h?V" ?ἣ) ("h`?" ?ἣ) ("hV?" ?ἣ)
 ("h?'" ?ἢ) ("h?v" ?ἢ) ("h'?" ?ἢ) ("hv?" ?ἢ)
 ("h^"  ?ῆ) ("h\\" ?ῆ)
 ("h^`"  ?ἧ) ("h^V"  ?ἧ) ("h\\`" ?ἧ) ("h\\V" ?ἧ)
 ("h`^"  ?ἧ) ("h`\\" ?ἧ) ("hV^"  ?ἧ) ("hV\\" ?ἧ)
 ("h^'"  ?ἦ) ("h^v"  ?ἦ) ("h\\'" ?ἦ) ("h\\v" ?ἦ)
 ("h'^"  ?ἦ) ("h'\\" ?ἦ) ("hv^"  ?ἦ) ("hv\\" ?ἦ)

 ("J" ?ͺ) ; ypogegrammeni

 ("hJ`" ?ᾑ) ("hJV" ?ᾑ)
 ("hJ'" ?ᾐ) ("hJv" ?ᾐ)
 ("hJ/" ?ῄ)
 ("hJ`/" ?ᾕ) ("hJV/" ?ᾕ) ("hJ/`" ?ᾕ) ("hJ/V" ?ᾕ)
 ("hJ'/" ?ᾔ) ("hJv/" ?ᾔ) ("hJ/'" ?ᾔ) ("hJ/v" ?ᾔ)
 ("hJ?" ?ῂ)
 ("hJ`?" ?ᾓ) ("hJV?" ?ᾓ) ("hJ?`" ?ᾓ) ("hJ?V" ?ᾓ)
 ("hJ'?" ?ᾒ) ("hJv?" ?ᾒ) ("hJ?'" ?ᾒ) ("hJ?v" ?ᾒ)
 ("hJ^"  ?ῇ) ("hJ\\" ?ῇ)
 ("hJ`^"  ?ᾗ) ("hJ`\\" ?ᾗ) ("hJV^"  ?ᾗ) ("hJV\\" ?ᾗ)
 ("hJ^`"  ?ᾗ) ("hJ\\`" ?ᾗ) ("hJ^V"  ?ᾗ) ("hJ\\V" ?ᾗ)
 ("hJ'^"  ?ᾖ) ("hJ'\\" ?ᾖ) ("hJv^"  ?ᾖ) ("hJv\\" ?ᾖ)
 ("hJ^'"  ?ᾖ) ("hJ\\'" ?ᾖ) ("hJ^v"  ?ᾖ) ("hJ\\v" ?ᾖ)

 ("o`" ?ὁ) ("oV" ?ὁ)
 ("o'" ?ὀ) ("ov" ?ὀ)
 ("o/" ?ό)
 ("o/`" ?ὅ) ("o/V" ?ὅ) ("o`/" ?ὅ) ("oV/" ?ὅ)
 ("o/'" ?ὄ) ("o/v" ?ὄ) ("o'/" ?ὄ) ("ov/" ?ὄ)
 ("o?" ?ὸ)
 ("o?`" ?ὃ) ("o?V" ?ὃ) ("o`?" ?ὃ) ("oV?" ?ὃ)
 ("o?'" ?ὂ) ("o?v" ?ὂ) ("o'?" ?ὂ) ("ov?" ?ὂ)

 ("u`" ?ὑ) ("uV" ?ὑ)
 ("u'" ?ὐ) ("uv" ?ὐ)
 ("u/" ?ύ)
 ("u/`" ?ὕ) ("u/V" ?ὕ) ("u`/" ?ὕ) ("uV/" ?ὕ)
 ("u/'" ?ὔ) ("u/v" ?ὔ) ("u'/" ?ὔ) ("uv/" ?ὔ)
 ("u?" ?ὺ)
 ("u?`" ?ὓ) ("u?V" ?ὓ) ("u`?" ?ὓ) ("uV?" ?ὓ)
 ("u?'" ?ὒ) ("u?v" ?ὒ) ("u'?" ?ὒ) ("uv?" ?ὒ)
 ("u^"  ?ῦ) ("u\\" ?ῦ)
 ("u^`"  ?ὗ) ("u^V"  ?ὗ) ("u\\`" ?ὗ) ("u\\V" ?ὗ)
 ("u`^"  ?ὗ) ("uV^"  ?ὗ) ("u`\\" ?ὗ) ("uV\\" ?ὗ)
 ("u^'"  ?ὖ) ("u^v"  ?ὖ) ("u\\'" ?ὖ) ("u\\v" ?ὖ)
 ("u'^"  ?ὖ) ("uv^"  ?ὖ) ("u'\\" ?ὖ) ("uv\\" ?ὖ)
 ("u\"" ?ϋ)
 ("u\"/" ?ΰ) ("u/\"" ?ΰ)
 ("u\"?" ?ῢ) ("u?\"" ?ῢ)

 ("w`" ?ὡ) ("wV" ?ὡ)
 ("w'" ?ὠ) ("wv" ?ὠ)
 ("w/" ?ώ)
 ("w/`" ?ὥ) ("w/V" ?ὥ) ("w`/" ?ὥ) ("wV/" ?ὥ)
 ("w/'" ?ὤ) ("w/v" ?ὤ) ("w'/" ?ὤ) ("wv/" ?ὤ)
 ("w?" ?ὼ)
 ("w?`" ?ὣ) ("w?V" ?ὣ) ("w`?" ?ὣ) ("wV?" ?ὣ)
 ("w?'" ?ὢ) ("w?v" ?ὢ) ("w'?" ?ὢ) ("wv?" ?ὢ)
 ("w^"  ?ῶ) ("w\\" ?ῶ)
 ("w^`"  ?ὧ) ("w^V"  ?ὧ) ("w\\`" ?ὧ) ("w\\V" ?ὧ)
 ("w`^"  ?ὧ) ("wV^"  ?ὧ) ("w`\\" ?ὧ) ("wV\\" ?ὧ)
 ("w^'"  ?ὦ) ("w^v"  ?ὦ) ("w\\'" ?ὦ) ("w\\v" ?ὦ)
 ("w'^"  ?ὦ) ("wv^"  ?ὦ) ("w'\\" ?ὦ) ("wv\\" ?ὦ)

 ("wJ`" ?ᾡ) ("wJV" ?ᾡ)
 ("wJ'" ?ᾠ) ("wJv" ?ᾠ)
 ("wJ/" ?ῴ)
 ("wJ/`" ?ᾥ) ("wJ/V" ?ᾥ) ("wJ`/" ?ᾥ) ("wJV/" ?ᾥ)
 ("wJ/'" ?ᾤ) ("wJ/v" ?ᾤ) ("wJ'/" ?ᾤ) ("wJv/" ?ᾤ)
 ("wJ?" ?ῲ)
 ("wJ?`" ?ᾣ) ("wJ?V" ?ᾣ) ("wJ`?" ?ᾣ) ("wJV?" ?ᾣ)
 ("wJ?'" ?ᾢ) ("wJ?v" ?ᾢ) ("wJ'?" ?ᾢ) ("wJv?" ?ᾢ)
 ("wJ^"  ?ῷ) ("wJ\\" ?ῷ)
 ("wJ^`"  ?ᾧ) ("wJ^V"  ?ᾧ) ("wJ\\`" ?ᾧ) ("wJ\\V" ?ᾧ)
 ("wJ`^"  ?ᾧ) ("wJV^"  ?ᾧ) ("wJ`\\" ?ᾧ) ("wJV\\" ?ᾧ)
 ("wJ^'"  ?ᾦ) ("wJ^v"  ?ᾦ) ("wJ\\'" ?ᾦ) ("wJ\\v" ?ᾦ)
 ("wJ'^"  ?ᾦ) ("wJv^"  ?ᾦ) ("wJ'\\" ?ᾦ) ("wJv\\" ?ᾦ)
 )

;;

(quail-define-package "greek-babel" "Greek" "BG" t
"The TeX Babel input method for Classical Greek using mule-unicode-0100-24ff.

-------------------------------------
character     capital	      small
-------------------------------------
alpha		A		a
beta		B		b
gamma		G		g
delta		D		d
epsilon		E		e
zeta		Z		z
eta		H		h
theta		J		j
iota		I		i
kappa		K		k
lambda		L		l
mu		M		m
nu		N		n
xi		X		x
omicron		O		o
pi		P		p
rho		R		r
sigma		S		s
final sigma			c
tau		T		t
upsilon		U		u
phi		F		f
chi		Q		q
psi		Y		y
omega		W		w
-------------------------------------
sampi				!
digamma		#
stigma				$
koppa		&		%
-------------------------------------

------------------------
mark		key
------------------------
ypogegrammeni	|
psili		>
dasia		<
oxia		\\='
koronis		\\='\\='
varia		\\=`
perispomeni	~
dialytika	\"
ano teleia	;
erotimatiko	?
----------------------
"
nil t t nil nil nil nil nil nil nil t)

(quail-define-rules

 ("!" ?ϡ) ; sampi
 ("#" ?Ϝ) ; DIGAMMA
 ("$" ?ϛ) ; stigma
 ("%" ?ϟ) ; koppa
 ("&" ?Ϟ) ; KOPPA
 (">" ?᾿) ; psili
 ("'" ?´) ; oxia
 (";" ?·) ; ano teleia
 ("?" ?;) ; erotimatiko
 ("\"" ?¨) ; dialytika
 ("|" ?ͺ) ; ypogegrammeni
 ("''" ?᾽) ; koronis
 ("((" ?«) ; #x00ab
 ("))" ?») ; #x00bb

 ("A" ?Α)
 ("A|" ?ᾼ)
 ("B" ?Β)
 ("D" ?Δ)
 ("E" ?Ε)
 ("F" ?Φ)
 ("G" ?Γ)
 ("H" ?Η)
 ("H|" ?ῌ)
 ("I" ?Ι)
 ("J" ?Θ)
 ("K" ?Κ)
 ("L" ?Λ)
 ("M" ?Μ)
 ("N" ?Ν)
 ("O" ?Ο)
 ("P" ?Π)
 ("Q" ?Χ)
 ("R" ?Ρ)
 ("S" ?Σ)
 ("T" ?Τ)
 ("U" ?Υ)
 ("W" ?Ω)
 ("W|" ?ῼ)
 ("X" ?Ξ)
 ("Y" ?Ψ)
 ("Z" ?Ζ)
 ("`" ?`) ; varia
 ("~" ?῀) ; perispomeni

 ("<" ?῾) ; dasia
 ("a" ?α)
 ("a|" ?ᾳ)
 ("b" ?β)
 ("c" ?ς)
 ("d" ?δ)
 ("e" ?ε)
 ("f" ?φ)
 ("g" ?γ)
 ("h" ?η)
 ("h|" ?ῃ)
 ("i" ?ι)
 ("j" ?θ)
 ("k" ?κ)
 ("l" ?λ)
 ("m" ?μ)
 ("n" ?ν)
 ("o" ?ο)
 ("p" ?π)
 ("q" ?χ)
 ("r" ?ρ)
 ("s" ?σ)
 ("t" ?τ)
 ("u" ?υ)
 ("w" ?ω)
 ("w|" ?ῳ)
 ("x" ?ξ)
 ("y" ?ψ)
 ("z" ?ζ)

 ("<i" ?ἱ)
 (">i" ?ἰ)
 ("'i" ?ί)
 ("<'i" ?ἵ)
 (">'i" ?ἴ)
 ("`i" ?ὶ)
 ("<`i" ?ἳ)
 (">`i" ?ἲ)
 ("~i"  ?ῖ)
 ("<~i"  ?ἷ)
 (">~i"  ?ἶ)
 ("\"i" ?ϊ)
 ("\"'i" ?ΐ)
 ("\"`i" ?ῒ)

 ("<I" ?Ἱ)
 (">I" ?Ἰ)
 ("'I" ?Ί)
 ("<'I" ?Ἵ)
 (">'I" ?Ἴ)
 ("`I" ?Ὶ)
 ("<`I" ?Ἳ)
 (">`I" ?Ἲ)
 ("<~I"  ?Ἷ)
 (">~I"  ?Ἶ)
 ("\"I" ?Ϊ)

 ("<~"  ?῟)
 (">~"  ?῏)
 ("<'" ?῞)
 (">'" ?῎)
 ("<`" ?῝)
 (">`" ?῍)
 ("\"'" ?΅)
 ("\"`" ?῭)

 ("<e" ?ἑ)
 (">e" ?ἐ)
 ("'e" ?έ)
 ("<'e" ?ἕ)
 (">'e" ?ἔ)
 ("`e" ?ὲ)
 ("<`e" ?ἓ)
 (">`e" ?ἒ)

 ("<E" ?Ἑ)
 (">E" ?Ἐ)
 ("'E" ?Έ)
 ("<'E" ?Ἕ)
 (">'E" ?Ἔ)
 ("`E" ?Ὲ)
 ("<`E" ?Ἓ)
 (">`E" ?Ἒ)

 ("<a" ?ἁ)
 (">a" ?ἀ)
 ("'a" ?ά)
 ("<'a" ?ἅ)
 (">'a" ?ἄ)
 ("`a" ?ὰ)
 ("<`a" ?ἃ)
 (">`a" ?ἂ)
 ("~a"  ?ᾶ)
 ("<~a"  ?ἇ)
 (">~a"  ?ἆ)

 ("<A" ?Ἁ)
 (">A" ?Ἀ)
 ("'A" ?Ά)
 ("<'A" ?Ἅ)
 (">'A" ?Ἄ)
 ("`A" ?Ὰ)
 ("<`A" ?Ἃ)
 (">`A" ?Ἂ)
 ("<~A"  ?Ἇ)
 (">~A"  ?Ἆ)

 ("<a|" ?ᾁ)
 (">a|" ?ᾀ)
 ("'a|" ?ᾴ)
 ("<'a|" ?ᾅ)
 (">'a|" ?ᾄ)
 ("`a|" ?ᾲ)
 ("<`a|" ?ᾃ)
 (">`a|" ?ᾂ)
 ("~a|"  ?ᾷ)
 ("<~a|"  ?ᾇ)
 (">~a|"  ?ᾆ)

 ("<A|" ?ᾉ)
 (">A|" ?ᾈ)
 ("<'A|" ?ᾍ)
 (">'A|" ?ᾌ)
 ("<`A|" ?ᾋ)
 (">`A|" ?ᾊ)
 ("<~A|"  ?ᾏ)
 (">~A|"  ?ᾎ)

 ("<r" ?ῥ)
 (">r" ?ῤ)

 ("<R" ?Ῥ)

 ("<h" ?ἡ)
 (">h" ?ἠ)
 ("'h" ?ή)
 ("<'h" ?ἥ)
 (">'h" ?ἤ)
 ("`h" ?ὴ)
 ("<`h" ?ἣ)
 (">`h" ?ἢ)
 ("~h"  ?ῆ)
 ("<~h"  ?ἧ)
 (">~h"  ?ἦ)

 ("<H" ?Ἡ)
 (">H" ?Ἠ)
 ("'H" ?Ή)
 ("<'H" ?Ἥ)
 (">'H" ?Ἤ)
 ("`H" ?Ὴ)
 ("<`H" ?Ἣ)
 (">`H" ?Ἢ)
 ("<~H"  ?Ἧ)
 (">~H"  ?Ἦ)

 ("|" ?ͺ) ; ypogegrammeni

 ("<h|" ?ᾑ)
 (">h|" ?ᾐ)
 ("'h|" ?ῄ)
 ("<'h|" ?ᾕ)
 (">'h|" ?ᾔ)
 ("`h|" ?ῂ)
 ("<`h|" ?ᾓ)
 (">`h|" ?ᾒ)
 ("~h|"  ?ῇ)
 ("<~h|"  ?ᾗ)
 (">~h|"  ?ᾖ)

 ("<H|" ?ᾙ)
 (">H|" ?ᾘ)
 ("<'H|" ?ᾝ)
 (">'H|" ?ᾜ)
 ("<`H|" ?ᾛ)
 (">`H|" ?ᾚ)
 ("<~H|"  ?ᾟ)
 (">~H|"  ?ᾞ)

 ("<o" ?ὁ)
 (">o" ?ὀ)
 ("'o" ?ό)
 ("<'o" ?ὅ)
 (">'o" ?ὄ)
 ("`o" ?ὸ)
 ("<`o" ?ὃ)
 (">`o" ?ὂ)

 ("<O" ?Ὁ)
 (">O" ?Ὀ)
 ("'O" ?Ό)
 ("<'O" ?Ὅ)
 (">'O" ?Ὄ)
 ("`O" ?Ὸ)
 ("<`O" ?Ὃ)
 (">`O" ?Ὂ)

 ("<u"   ?ὑ)
 (">u"   ?ὐ)
 ("'u"   ?ύ)
 ("<'u"  ?ὕ)
 (">'u"  ?ὔ)
 ("`u"   ?ὺ)
 ("<`u"  ?ὓ)
 (">`u"  ?ὒ)
 ("~u"   ?ῦ)
 ("<~u"  ?ὗ)
 (">~u"  ?ὖ)
 ("\"u"  ?ϋ)
 ("\"'u" ?ΰ)
 ("`\"u" ?ῢ)

 ("<U"   ?Ὑ)
 ("'U"   ?Ύ)
 ("<'U"  ?Ὕ)
 ("`U"   ?Ὺ)
 ("<`U"  ?Ὓ)
 ("<~U"  ?Ὗ)
 ("\"U"  ?Ϋ)

 ("<w"  ?ὡ)
 (">w"  ?ὠ)
 ("'w"  ?ώ)
 ("<'w" ?ὥ)
 (">'w" ?ὤ)
 ("`w"  ?ὼ)
 ("<`w" ?ὣ)
 (">`w" ?ὢ)
 ("~w"  ?ῶ)
 ("<~w" ?ὧ)
 (">~w" ?ὦ)

 ("<W"  ?Ὡ)
 (">W"  ?Ὠ)
 ("'W"  ?Ώ)
 ("<'W" ?Ὥ)
 (">'W" ?Ὤ)
 ("`W"  ?Ὼ)
 ("<`W" ?Ὣ)
 (">`W" ?Ὢ)
 ("<~W" ?Ὧ)
 (">~W" ?Ὦ)

 ("<w|"	 ?ᾡ)
 (">w|"	 ?ᾠ)
 ("'w|"	 ?ῴ)
 ("<'w|" ?ᾥ)
 (">'w|" ?ᾤ)
 ("`w|"  ?ῲ)
 ("<`w|" ?ᾣ)
 (">`w|" ?ᾢ)
 ("~w|"	 ?ῷ)
 ("<~w|" ?ᾧ)
 (">~w|" ?ᾦ)

 ("<W|"	 ?ᾩ)
 (">W|"	 ?ᾨ)
 ("'W|"	 ?ῴ)
 ("<'W|" ?ᾭ)
 (">'W|" ?ᾬ)
 ("<`W|" ?ᾫ)
 (">`W|" ?ᾪ)
 ("<~W|" ?ᾯ)
 (">~W|" ?ᾮ)
 )

;;

(quail-define-package "greek-ibycus4" "Greek" "IB" t
"The Ibycus4 input method for Classical Greek using mule-unicode-0100-24ff."
nil t t nil nil nil nil nil nil nil t)

(quail-define-rules

 ("{((}" ?\() ("((" ?\() ; #x0028
 ("{))}" ?\)) ("))" ?\)) ; #x0029
 ("<<" ?«) ; #x00ab
 (">>" ?») ; #x00bb

 ("-" ?‐) ; #x2010
 ("---" ?—) ; #x2014
 ("||" ?‖) ; #x2016
 ("{`}" ?‘) ("`" ?‘) ; #x2018
 ("{'}" ?’) ("'" ?’) ; #x2019
 ("{``}" ?“) ("``" ?“) ; #x201c
 ("{''}" ?”) ("''" ?”) ; #x201d
 ("{\\dag}" ?†) ("\\dag" ?†) ; #x2020
 ("{\\ddag}" ?‡) ("\\ddag" ?‡) ; #x2021
 ("<" ?‹) ; #x2039
 (">" ?›) ; #x203a
 ("$\\leftarrow$" ?←) ; #x2190
 ("$\\rightarrow$" ?→) ; #x2192

 ("?" ?;) ; #x037e ; erotimatiko
 (";" ?·) ; #x0387 ; ano teleia
 ("|" ?ͺ) ; #x037a ; ypogegrammeni

 ("A" ?Α)
 ("B" ?Β)
 ("G" ?Γ)
 ("D" ?Δ)
 ("E" ?Ε)
 ("Z" ?Ζ)
 ("H" ?Η)
 ("Q" ?Θ)
 ("I" ?Ι)
 ("K" ?Κ)
 ("L" ?Λ)
 ("M" ?Μ)
 ("N" ?Ν)
 ("C" ?Ξ)
 ("O" ?Ο)
 ("P" ?Π)
 ("R" ?Ρ)
 ("S" ?Σ)
 ("T" ?Τ)
 ("U" ?Υ)
 ("F" ?Φ)
 ("X" ?Χ)
 ("Y" ?Ψ)
 ("W" ?Ω)

 ("a" ?α)
 ("b" ?β)
 ("g" ?γ)
 ("d" ?δ)
 ("e" ?ε)
 ("z" ?ζ)
 ("h" ?η)
 ("q" ?θ)
 ("i" ?ι)
 ("k" ?κ)
 ("l" ?λ)
 ("m" ?μ)
 ("n" ?ν)
 ("c" ?ξ)
 ("o" ?ο)
 ("p" ?π)
 ("r" ?ρ)
 ("j" ?ς) ("s " ["ς "]) ("s," ["ς,"]) ("s." ["ς."]) ("s?" ["ς;"]) ("s;" ["ς·"])
 ("s|" ?σ) ("s" ?σ)
 ("t" ?τ)
 ("u" ?υ)
 ("f" ?φ)
 ("x" ?χ)
 ("y" ?ψ)
 ("w" ?ω)

 ("i+" ?ϊ)
 ("u+" ?ϋ)
 ("V" ?Ϝ) ; DIGAMMA
 ("v" ?ϝ) ; digamma
 ("K+" ?Ϟ) ; KOPPA
 ("k+" ?ϟ) ; koppa
 ("S+" ?Ϡ) ; SAMPI
 ("s+" ?ϡ) ; sampi
 ("c+" ?ϲ) ; lunate sigma

 ("a)" ?ἀ)
 ("a(" ?ἁ)
 ("a)`" ?ἂ)
 ("a(`" ?ἃ)
 ("a)'" ?ἄ)
 ("a('" ?ἅ)
 ("a)=" ?ἆ)
 ("a(=" ?ἇ)

 (")A" ?Ἀ)
 ("(A" ?Ἁ)
 (")`A" ?Ἂ)
 ("(`A" ?Ἃ)
 (")'A" ?Ἄ)
 ("('A" ?Ἅ)
 (")=A" ?Ἆ)
 ("(=A" ?Ἇ)

 ("e)" ?ἐ)
 ("e(" ?ἑ)
 ("e)`" ?ἒ)
 ("e(`" ?ἓ)
 ("e)'" ?ἔ)
 ("e('" ?ἕ)

 (")E" ?Ἐ)
 ("(E" ?Ἑ)
 (")`E" ?Ἒ)
 ("(`E" ?Ἓ)
 (")'E" ?Ἔ)
 ("('E" ?Ἕ)

 ("h)" ?ἠ)
 ("h(" ?ἡ)
 ("h)`" ?ἢ)
 ("h(`" ?ἣ)
 ("h)'" ?ἤ)
 ("h('" ?ἥ)
 ("h)=" ?ἦ)
 ("h(=" ?ἧ)

 (")H" ?Ἠ)
 ("(H" ?Ἡ)
 (")`H" ?Ἢ)
 ("(`H" ?Ἣ)
 (")'H" ?Ἤ)
 ("('H" ?Ἥ)
 (")=H" ?Ἦ)
 ("(=H" ?Ἧ)

 ("i)" ?ἰ)
 ("i(" ?ἱ)
 ("i)`" ?ἲ)
 ("i(`" ?ἳ)
 ("i)'" ?ἴ)
 ("i('" ?ἵ)
 ("i)=" ?ἶ)
 ("i(=" ?ἷ)

 (")I" ?Ἰ)
 ("(I" ?Ἱ)
 (")`I" ?Ἲ)
 ("(`I" ?Ἳ)
 (")'I" ?Ἴ)
 ("('I" ?Ἵ)
 (")=I" ?Ἶ)
 ("(=I" ?Ἷ)

 ("o)" ?ὀ)
 ("o(" ?ὁ)
 ("o)`" ?ὂ)
 ("o(`" ?ὃ)
 ("o)'" ?ὄ)
 ("o('" ?ὅ)

 (")O" ?Ὀ)
 ("(O" ?Ὁ)
 (")`O" ?Ὂ)
 ("(`O" ?Ὃ)
 (")'O" ?Ὄ)
 ("('O" ?Ὅ)

 ("u)" ?ὐ)
 ("u(" ?ὑ)
 ("u)`" ?ὒ)
 ("u(`" ?ὓ)
 ("u)'" ?ὔ)
 ("u('" ?ὕ)
 ("u)=" ?ὖ)
 ("u(=" ?ὗ)

 ("(U" ?Ὑ)
 ("(`U" ?Ὓ)
 ("('U" ?Ὕ)
 ("(=U" ?Ὗ)

 ("w)" ?ὠ)
 ("w(" ?ὡ)
 ("w)`" ?ὢ)
 ("w(`" ?ὣ)
 ("w)'" ?ὤ)
 ("w('" ?ὥ)
 ("w)=" ?ὦ)
 ("w(=" ?ὧ)

 (")W" ?Ὠ)
 ("(W" ?Ὡ)
 (")`W" ?Ὢ)
 ("(`W" ?Ὣ)
 (")'W" ?Ὤ)
 ("('W" ?Ὥ)
 (")=W" ?Ὦ)
 ("(=W" ?Ὧ)

 ("a`" ?ὰ)
 ("a'" ?ά)
 ("e`" ?ὲ)
 ("e'" ?έ)
 ("h`" ?ὴ)
 ("h'" ?ή)
 ("i`" ?ὶ)
 ("i'" ?ί)
 ("o`" ?ὸ)
 ("o'" ?ό)
 ("u`" ?ὺ)
 ("u'" ?ύ)
 ("w`" ?ὼ)
 ("w'" ?ώ)

 ("a)|" ?ᾀ)
 ("a(|" ?ᾁ)
 ("a)`|" ?ᾂ)
 ("a(`|" ?ᾃ)
 ("a)'|" ?ᾄ)
 ("a('|" ?ᾅ)
 ("a)=|" ?ᾆ)
 ("a(=|" ?ᾇ)

 (")A|" ?ᾈ)
 ("(A|" ?ᾉ)
 (")`A|" ?ᾊ)
 ("(`A|" ?ᾋ)
 (")'A|" ?ᾌ)
 ("('A|" ?ᾍ)
 (")=A|" ?ᾎ)
 ("(=A|" ?ᾏ)

 ("h)|" ?ᾐ)
 ("h(|" ?ᾑ)
 ("h)`|" ?ᾒ)
 ("h(`|" ?ᾓ)
 ("h)'|" ?ᾔ)
 ("h('|" ?ᾕ)
 ("h)=|" ?ᾖ)
 ("h(=|" ?ᾗ)

 (")H|" ?ᾘ)
 ("(H|" ?ᾙ)
 (")`H|" ?ᾚ)
 ("(`H|" ?ᾛ)
 (")'H|" ?ᾜ)
 ("('H|" ?ᾝ)
 (")=H|" ?ᾞ)
 ("(=H|" ?ᾟ)

 ("w)|" ?ᾠ)
 ("w(|" ?ᾡ)
 ("w)`|" ?ᾢ)
 ("w(`|" ?ᾣ)
 ("w)'|" ?ᾤ)
 ("w('|" ?ᾥ)
 ("w)=|" ?ᾦ)
 ("w(=|" ?ᾧ)

 (")W|" ?ᾨ)
 ("(W|" ?ᾩ)
 (")`W|" ?ᾪ)
 ("(`W|" ?ᾫ)
 (")'W|" ?ᾬ)
 ("('W|" ?ᾭ)
 (")=W|" ?ᾮ)
 ("(=W|" ?ᾯ)

 ("a`|" ?ᾲ)
 ("a|" ?ᾳ)
 ("a'|" ?ᾴ)
 ("a=" ?ᾶ)
 ("a=|" ?ᾷ)

 ("`A" ?Ὰ)
 ("'A" ?Ά)
 ("A|" ?ᾼ)

 (")" ?᾿) ; #x1fbf ; psili
 ("=" ?῀) ; #x1fc0 ; perispomeni
 ("+=" ?῁) ; #x1fc1

 ("h`|" ?ῂ)
 ("h|" ?ῃ)
 ("h'|" ?ῄ)
 ("h=" ?ῆ)
 ("h=|" ?ῇ)

 ("`E" ?Ὲ)
 ("'E" ?Έ)

 ("`H" ?Ὴ)
 ("'H" ?Ή)
 ("H|" ?ῌ)

 (")`" ?῍) ; #x1fcd
 (")'" ?῎) ; #x1fce
 (")=" ?῏) ; #x1fcf

 ("i+`" ?ῒ)
 ("i+'" ?ΐ)
 ("i=" ?ῖ)
 ("i+=" ?ῗ)

 ("`I" ?Ὶ)
 ("'I" ?Ί)

 ("(`" ?῝) ; #x1fdd
 ("('" ?῞) ; #x1fde
 ("(=" ?῟) ; #x1fdf

 ("u+`" ?ῢ)
 ("u+'" ?ΰ)

 ("r)" ?ῤ)
 ("r(" ?ῥ)

 ("u=" ?ῦ)
 ("u+=" ?ῧ)

 ("`U" ?Ὺ)
 ("'U" ?Ύ)

 ("`R" ?Ῥ)

 ("+`" ?῭) ; #x1fed
 ("+'" ?΅) ; #x1fee
 ("`" ?`) ; #x1fef ; varia

 ("w`|" ?ῲ)
 ("w|" ?ῳ)
 ("w'|" ?ῴ)
 ("w=" ?ῶ)
 ("w=|" ?ῷ)

 ("`O" ?Ὸ)
 ("'O" ?Ό)

 ("`W" ?Ὼ)
 ("'W" ?Ώ)
 ("W|" ?ῼ)

 ("'" ?´) ; #x1ffd ; oxia
 ("(" ?῾) ;  #x1ffe ; dasia
)

;;

(quail-define-package
 "greek" "Greek" "Ω" nil
 "Ελληνικά: Greek keyboard layout (ISO 8859-7)
--------------

In the right of λ key is a combination key, where
 ΄ acute
 ¨ diaeresis

e.g.
 ΄ + α -> ά
 ¨ + ι -> ϊ
 ¨ + ΄ + ι -> ΐ"
 nil t t t t nil nil nil nil nil t)

;; 1!  2@  3#  4$  5%  6^  7&  8*  9(  0)  -_  =+  `~
;;  ;:  ςΣ  εΕ  ρΡ  τΤ  υΥ  θΘ  ιΙ  οΟ  πΠ  [{  ]}
;;   αΑ  σΣ  δΔ  φΦ  γΓ  ηΗ  ξΞ  κΚ  λΛ  ΄¨  '"  \|
;;    ζΖ  χΧ  ψΨ  ωΩ  βΒ  νΝ  μΜ  ,<  .>  /?

(quail-define-rules
 ("1" ?1)
 ("2" ?2)
 ("3" ?3)
 ("4" ?4)
 ("5" ?5)
 ("6" ?6)
 ("7" ?7)
 ("8" ?8)
 ("9" ?9)
 ("0" ?0)
 ("-" ?-)
 ("=" ?=)
 ("`" ?`)
 ("q" ?\;)
 ("w" ?ς)
 ("e" ?ε)
 ("r" ?ρ)
 ("t" ?τ)
 ("y" ?υ)
 ("u" ?θ)
 ("i" ?ι)
 ("o" ?ο)
 ("p" ?π)
 ("[" ?\[)
 ("]" ?\])
 ("a" ?α)
 ("s" ?σ)
 ("d" ?δ)
 ("f" ?φ)
 ("g" ?γ)
 ("h" ?η)
 ("j" ?ξ)
 ("k" ?κ)
 ("l" ?λ)
 (";" ?΄)
 ("'" ?')
 ("\\" ?\\)
 ("z" ?ζ)
 ("x" ?χ)
 ("c" ?ψ)
 ("v" ?ω)
 ("b" ?β)
 ("n" ?ν)
 ("m" ?μ)
 ("," ?,)
 ("." ?.)
 ("/" ?/)

 ("!" ?!)
 ("@" ?@)
 ("#" ?#)
 ("$" ?$)
 ("%" ?%)
 ("^" ?^)
 ("&" ?&)
 ("*" ?*)
 ("(" ?\()
 (")" ?\))
 ("_" ?_)
 ("+" ?+)
 ("~" ?~)
 ("Q" ?:)
 ("W" ?Σ)
 ("E" ?Ε)
 ("R" ?Ρ)
 ("T" ?Τ)
 ("Y" ?Υ)
 ("U" ?Θ)
 ("I" ?Ι)
 ("O" ?Ο)
 ("P" ?Π)
 ("{" ?{)
 ("}" ?})
 ("A" ?Α)
 ("S" ?Σ)
 ("D" ?Δ)
 ("F" ?Φ)
 ("G" ?Γ)
 ("H" ?Η)
 ("J" ?Ξ)
 ("K" ?Κ)
 ("L" ?Λ)
 (":" ?¨)
 ("\"" ?\")
 ("|" ?|)
 ("Z" ?Ζ)
 ("X" ?Χ)
 ("C" ?Ψ)
 ("V" ?Ω)
 ("B" ?Β)
 ("N" ?Ν)
 ("M" ?Μ)
 ("<" ?<)
 (">" ?>)
 ("?" ??)

 (";a" ?ά)
 (";e" ?έ)
 (";h" ?ή)
 (";i" ?ί)
 (";o" ?ό)
 (";y" ?ύ)
 (";v" ?ώ)
 (";A" ?Ά)
 (";E" ?Έ)
 (";H" ?Ή)
 (";I" ?Ί)
 (";O" ?Ό)
 (";Y" ?Ύ)
 (";V" ?Ώ)
 (":i" ?ϊ)
 (":y" ?ϋ)
 (":I" ?Ϊ)
 (":Y" ?Ϋ)
 (";:i" ?ΐ)
 (":;i" ?ΐ)
 (";:y" ?ΰ)
 (":;y" ?ΰ)
 (";<" ?«)
 (";>" ?»))

(quail-define-package
 "greek-postfix" "GreekPost" "Ψ" nil
 "Ελληνικά: Greek keyboard layout with postfix accents (ISO 8859-7)
--------------

In the right of λ key is a combination key, where
 ΄ acute
 ¨ diaeresis

e.g.
 α + ΄ -> ά
 ι + ¨ -> ϊ
 ι + ¨ + ΄ -> ΐ"
 nil t t t t nil nil nil nil nil t)

;; 1!  2@  3#  4$  5%  6^  7&  8*  9(  0)  -_  =+  `~
;;  ·―  ςΣ  εΕ  ρΡ  τΤ  υΥ  θΘ  ιΙ  οΟ  πΠ  [{  ]}
;;   αΑ  σΣ  δΔ  φΦ  γΓ  ηΗ  ξΞ  κΚ  λΛ  ΄¨  '"  \|
;;    ζΖ  χΧ  ψΨ  ωΩ  βΒ  νΝ  μΜ  ,;  .:  /?

(quail-define-rules
 ("1" ?1)
 ("2" ?2)
 ("3" ?3)
 ("4" ?4)
 ("5" ?5)
 ("6" ?6)
 ("7" ?7)
 ("8" ?8)
 ("9" ?9)
 ("0" ?0)
 ("-" ?-)
 ("=" ?=)
 ("`" ?`)
 ("q" ?\;)
 ("w" ?ς)
 ("e" ?ε)
 ("r" ?ρ)
 ("t" ?τ)
 ("y" ?υ)
 ("u" ?θ)
 ("i" ?ι)
 ("o" ?ο)
 ("p" ?π)
 ("[" ?\[)
 ("]" ?\])
 ("a" ?α)
 ("s" ?σ)
 ("d" ?δ)
 ("f" ?φ)
 ("g" ?γ)
 ("h" ?η)
 ("j" ?ξ)
 ("k" ?κ)
 ("l" ?λ)
 (";" ?΄)
 ("'" ?')
 ("\\" ?\\)
 ("z" ?ζ)
 ("x" ?χ)
 ("c" ?ψ)
 ("v" ?ω)
 ("b" ?β)
 ("n" ?ν)
 ("m" ?μ)
 ("," ?,)
 ("." ?.)
 ("/" ?/)

 ("!" ?!)
 ("@" ?@)
 ("#" ?#)
 ("$" ?$)
 ("%" ?%)
 ("^" ?^)
 ("&" ?&)
 ("*" ?*)
 ("(" ?\()
 (")" ?\))
 ("_" ?_)
 ("+" ?+)
 ("~" ?~)
 ("Q" ?:)
 ("W" ?Σ)
 ("E" ?Ε)
 ("R" ?Ρ)
 ("T" ?Τ)
 ("Y" ?Υ)
 ("U" ?Θ)
 ("I" ?Ι)
 ("O" ?Ο)
 ("P" ?Π)
 ("{" ?{)
 ("}" ?})
 ("A" ?Α)
 ("S" ?Σ)
 ("D" ?Δ)
 ("F" ?Φ)
 ("G" ?Γ)
 ("H" ?Η)
 ("J" ?Ξ)
 ("K" ?Κ)
 ("L" ?Λ)
 (":" ?¨)
 ("\"" ?\")
 ("|" ?|)
 ("Z" ?Ζ)
 ("X" ?Χ)
 ("C" ?Ψ)
 ("V" ?Ω)
 ("B" ?Β)
 ("N" ?Ν)
 ("M" ?Μ)
 ("<" ?<)
 (">" ?>)
 ("?" ??)

 ("a;" ?ά)
 ("e;" ?έ)
 ("h;" ?ή)
 ("i;" ?ί)
 ("o;" ?ό)
 ("y;" ?ύ)
 ("v;" ?ώ)
 ("A;" ?Ά)
 ("E;" ?Έ)
 ("H;" ?Ή)
 ("I;" ?Ί)
 ("O;" ?Ό)
 ("Y;" ?Ύ)
 ("V;" ?Ώ)
 ("i:" ?ϊ)
 ("y:" ?ϋ)
 ("I:" ?Ϊ)
 ("Y:" ?Ϋ)
 ("i:;" ?ΐ)
 ("i;:" ?ΐ)
 ("y:;" ?ΰ)
 ("y;:" ?ΰ)
 ;; These two are asymmetric with ";<" and ";>" in "greek" input
 ;; method.  But, as the other Latin postfix methods adopt "<<" and
 ;; ">>", it may be better to follow them.
 ("<<" ?«)
 (">>" ?»))


;;; greek.el ends here
