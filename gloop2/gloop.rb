
#お客さんクラス お金を入れる処理とジュースを選ぶ処理
class Customer
  MONEY = [10, 50, 100, 500, 1000].freeze
  # @slot_money = 0
  def slot_money
    puts "#{MONEY}円が使えます"
    puts "お金を投入してください"
    @slot_money = gets
    
    return false unless MONEY.include?(@slot_money)
    
    @slot_money += money

  end
  

  #test.rb:14:in `<class:Customer>': undefined method `lot_money' for Customer:Class (NoMethodError)
	#from test.rb:2:in `<main>'
  def choice
    puts"選んでください"
    puts "0:レッドブル, 1:コーラ, 2:水,"
    @choice_juice = gets.chomp
      while true do
        if @choice_juice == "0" || @choice_juice == "1" ||  @choice_juice == "2"
          return @choice_juice.to_i
        else
          puts "0~2を入力してください"
          puts "0:レッドブル, 1:コーラ, 2:水,"
          @choice_juice = gets.chomp
        end
      end
  end

end


class Stock
  def initialize
    @drink = [{name:"redbull", price:200, stock:5},
      {name:"cola", price:120, stock:5},
      {name:"water", price:100, stock:5}]
  end
  
  def buy
    if @choice_juice == 0
      @drink[0][:stock] = @drink[0][:stock] - 1
    elsif @choice_juice == 1
      @drink[1][:stock] = @drink[1][:stock] - 1
    elsif @choice_juice == 2
      @drink[2][:stock] = @drink[2][:stock] - 1
    end
  end
end

class Money
  def initialize
    @sales = 0
  end

  def sales 
    if @choice_juice == 0
      @sales += 200
    elsif @choice_juice == 1
      @sales += 120
    elsif @choice_juice == 2
      @sales += 100
    end
  end

  def return_money
    if @choice_juice == 0
      @slot_money -= 200
    elsif @choice_juice == 1
      @slot_money -= 120
    elsif @choice_juice == 2
      @slot_money -= 100
    end
  end
end

#最終形態
class VendingMachine
  def self.start
    customer = Customer.new #slot_moneyの中身  @choice_juiceの中身
    stock = Stock.new
    money = Money.new
  end
end

VendingMachine.start

#商品とお釣りが返ってくる
#終了


#自販機の中身の変化
#売上金が増える
#売れたジュースの在庫が減る






#実験場



#インスタンス変数はクラス間を行き来できるのか？




#ユーザがみる出力
#1.お金を入れる
#2.この中から選んでください（在庫がないのは表示しない）
#3.投入金額の合計値が商品金額以上かつ在庫がある商品は買うことができる
#4.買ったあと 投入金額 - 商品の値段 値をユーザに返却する
#5.自販機自体の売上に売れた商品の金額を合計していく
#6.在庫から売れた商品の数を１減らす
#  在庫が0になったらリストから除外する
#変数
#MONEY = [10, 50, 100, 500, 1000].freeze
#入れられるお金の種類
#@slot_money
#ユーザが投入した金額の合計
#slot_money(money)のmoneyの値がユーザが投入した金額
#slot_money(money)←money(引数)が投入する金額
#リスト表示のメソッド




















