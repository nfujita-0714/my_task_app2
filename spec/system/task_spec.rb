require 'rails_helper'
RSpec.describe 'タスク管理機能', type: :system do

  describe '新規作成機能' do
    context 'タスクを新規作成した場合' do
      it '作成したタスクが表示される' do
        visit root_path tasks_new_path
        fill_in "Title", with: 'aaaaaa'
        fill_in "Contents", with: 'aaaaaa'
        click_on '送信'
        expect(page).to have_content '送信しました'
      end
    end
  end

  describe '一覧表示機能' do
    context '一覧画面に遷移した場合' do
      it '作成済みのタスク一覧が表示される' do
        task = FactoryBot.create(:task, title: 'task')
        visit tasks_path
        expect(page).to have_content 'task_failure'
      end
    end
  end

  describe '詳細表示機能' do
    context '任意のタスク詳細画面に遷移した場合' do
      it '該当タスクの内容が表示される' do
        visit task_path
        fill_in "Title", with: 'aaaaaa'
        fill_in "Contents", with: 'aaaaaa'
        click_on '送信する'
        expect(page).to have_content '編集が完了しました'
      end
     end
  end
end