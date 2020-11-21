puts <<~TEXT
旅行プランを選択してください
1. 沖縄旅行 ¥10,000
2. 北海道旅行 ¥20,000
3. 九州旅行 ¥15,000
TEXT

# choose the plan
plan = gets.to_i
if plan == 1
  puts "沖縄旅行ですね、何人で行きますか？"
  price = 10000
elsif plan == 2
  puts "北海道旅行ですね、何人で行きますか？"
  price = 20000
elsif plan == 3
  puts "九州旅行ですね、何人で行きますか？"
  price = 15000
end

# number of tourist & price
number = gets.to_i
# total_priceは通常価格
total_price = (number * price).to_s.reverse.scan(/.{1,3}/).join(',').reverse
# discount_price = 10%割引した価格
discount_price = ((number * price * 0.9).floor).to_s.reverse.scan(/.{1,3}/).join(',').reverse

if number < 5
  puts <<~TEXT
  #{number}人
  合計料金 : ¥#{total_price}
TEXT

else
  puts <<~TEXT
  #{number}人
  5人以上なので10%割引となります
  合計料金 : ¥#{discount_price}
  TEXT
end
