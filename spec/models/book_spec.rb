require 'rails_helper'

RSpec.describe Book, type: :model do
  describe '本新規登録' do
    before do
      @book = FactoryBot.build(:book)
      @book.cover = fixture_file_upload('public/images/test_image.png')
      @book.image = fixture_file_upload('public/images/test_image.png')
    end

    context '商品情報登録がうまくいく時' do
      it "全ての情報が存在すれば登録できる" do
        expect(@book).to be_valid
      end
    end

    context '商品情報登録がうまくいかないとき' do
      it "タイトルが空だと登録できない" do
        @book.title = ''
        @book.valid?
        expect(@book.errors.full_messages).to include("Title can't be blank")
      end
      it "表紙が空だと登録できない" do
        @book.cover = nil
        @book.valid?
        expect(@book.errors.full_messages).to include("Cover can't be blank")
      end
      it "登録日のが空だと登録できない" do
        @book.record_date = ''
        @book.valid?
        expect(@book.errors.full_messages).to include("Record date can't be blank")
      end
      it "読書状況の情報が空だと登録できない" do
        @book.reading_situation_id = ''
        @book.valid?
        expect(@book.errors.full_messages).to include("Reading situation is not a number")
      end
      it "読書状況の情報が--だと登録できない" do
        @book.reading_situation_id = '1'
        @book.valid?
        expect(@book.errors.full_messages).to include("Reading situation must be other than 1")
      end
    end
  end
end