#ifndef DISPLAY_H
#define DISPLAY_H

#include <QString>
#include <QTableView>
#include <QObject>

#include "connection.h"

class display : public QObject
{
    Q_OBJECT
public:
    connection conn;
    QTableView *table;
    QString id;
    QString selectedDateStr;

    display();
    display(connection &myconn);

private:
    void resetValues();

public slots:
    void displayResults(QTableView *table, QString command);
    void updateEventsView(QTableView *eventTable, QString username, QString date);
    void updateGroupsView(QTableView *groupTbl, QString username);
    void updateMemberEvents(QTableView *eventTable, QString groupID, QString date);
    void updateGroupEvents(QTableView *eventTable, QString groupID);   // doesn't work
    void updateMembersView(QTableView *memberTbl, QString groupID);
    void updateRemindersView(QTableView *reminderTbl, QString username);
    void updateBulletinsView(QTableView *bulletinTbl, QString groupID);
    void initValues(QTableView *tbl, QString newID, QString date);
};

#endif // DISPLAY_H
