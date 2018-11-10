#!/bin/sh

~/i3lock \
--insidevercolor='#00000000'   \
--ringvercolor='#ffffffff'     \
\
--insidewrongcolor='#00000000' \
--ringwrongcolor='#000000bb'   \
\
--insidecolor='#00000000'      \
--ringcolor='#ffffffcc'        \
--linecolor='#00000000'        \
--separatorcolor='#ffffffcc'   \
\
--verifcolor='#ffffffff'        \
--wrongcolor='#ffffffff'        \
--timecolor='#ffffffff'        \
--datecolor='#ffffffff'        \
--layoutcolor='#ffffffff'      \
--keyhlcolor='#000000bb'       \
--bshlcolor='#000000bb'        \
\
--screen 1            \
--blur 5              \
--clock               \
--indicator           \
--timestr="%H:%M:%S"  \
--datestr="%A, %m %Y" \
--keylayout 2         \
