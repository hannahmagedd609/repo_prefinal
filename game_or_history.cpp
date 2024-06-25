#include "game_or_history.h"
#include "ui_game_or_history.h"
#include "ai_or_2.h"
#include "ui_ai_or_2.h"
#include <QStringListModel>


#include "GameManager.h"

game_or_history::game_or_history(QWidget *parent)
    : QDialog(parent)
    , ui(new Ui::game_or_history)
{
    ui->setupUi(this);
}

game_or_history::~game_or_history()
{
    delete ui;
}

void game_or_history::on_play_new_game_clicked()
{
    AI_or_2 ai_or_2;
    ai_or_2.setModal(true);
    ai_or_2.exec();

}


void game_or_history::on_view_game_history_clicked()
{
    QStringListModel* model = new QStringListModel(this);
    model->setStringList(gameManager.totalhistory);
    ui->listView->setModel(model);

    //game_history game_history;
   // game_history.setModal(true);
    //game_history.exec();
}




