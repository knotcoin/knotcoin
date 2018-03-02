// Copyright (c) 2011-2014 The Knotcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef KNOTTCOIN_QT_KNOTTCOINADDRESSVALIDATOR_H
#define KNOTTCOIN_QT_KNOTTCOINADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class KnotcoinAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit KnotcoinAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Knotcoin address widget validator, checks for a valid knotcoin address.
 */
class KnotcoinAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit KnotcoinAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // KNOTTCOIN_QT_KNOTTCOINADDRESSVALIDATOR_H
