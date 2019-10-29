
def Start 
    item = ["Fountain Drink", "Frozen Drink", "Candy Bars", "Chips", "Hamburger", "Cheeseburger", "Hot Dog", "Chili Dog", "Pop Corn",]
    itemprice = ["1.00","1.50","1.00","0.50","2.00","2.50","1.50","2.00","0.50"]
    MenuDisplay(item, itemprice)
    UserSelection(item,itemprice)
    Totals()

end


  



def MenuDisplay(item, itemprice)
    $choices = [1,2,3,4,5,6,7,8,9,10]
    
     x=1
    items = item.zip(itemprice)
    items.each do |item, itemprice|
        print x
        print ".)   "
        print item
        print ": "
        print itemprice
        puts
        x += 1

    end
end

def UserSelection(item,price1)
    userchoice = 0
    until $choices.include?(userchoice)
        print "Make a selection"
        userchoice = gets.to_i
    end
   

    receipt=[]
    $cost = []

    if userchoice == 1 
        receipt.push(1.00)
    elsif userchoice == 2
        receipt.push(1.50)
    elsif userchoice == 3
        receipt.push(1.00)
    elsif userchoice == 4
        receipt.push(0.50)
    elsif userchoice == 5
        receipt.push(2.00)
    elsif userchoice == 6
        receipt.push(2.50)
    elsif userchoice == 7
        receipt.push(1.50)
    elsif userchoice == 8
        receipt.push(2.00)
    elsif userchoice == 9
        receipt.push(0.50)
    end
    x=0
    item.each do |i|
        if userchoice - 1 ==  x
            $cost.push(price1(x))
        else
            next
        end
    end
    Totals()
end


def Totals
    x = 0
    for i in $cost
        x += i
    end
    tax = x * 0.06
    total = x + tax

    print "Subtotal \n", x
    print "Tax Total \n", tax
    print "Total Due", total

end


Start()
