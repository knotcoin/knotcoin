#!/bin/bash

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

KNOTTCOIND=${KNOTTCOIND:-$SRCDIR/knotcoind}
KNOTTCOINCLI=${KNOTTCOINCLI:-$SRCDIR/knotcoin-cli}
KNOTTCOINTX=${KNOTTCOINTX:-$SRCDIR/knotcoin-tx}
KNOTTCOINQT=${KNOTTCOINQT:-$SRCDIR/qt/knotcoin-qt}

[ ! -x $KNOTTCOIND ] && echo "$KNOTTCOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
KNOTVER=($($KNOTTCOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for knotcoind if --version-string is not set,
# but has different outcomes for knotcoin-qt and knotcoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$KNOTTCOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $KNOTTCOIND $KNOTTCOINCLI $KNOTTCOINTX $KNOTTCOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${KNOTVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${KNOTVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
