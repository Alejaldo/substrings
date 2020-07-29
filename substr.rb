print "What banks you use for mukain? "
bank = gets.chomp

dictionary = ['agrario', 'bancolombia', 'bogota', 'davivienda', 
    'bbva', 'popular', 'bcsc', 'villas', 'occidente', 'colpatria', 
    'colombia', 'credito', 'gnb', 'citibank', 'banistmo', 'abnamro',
    'ario', 'lombia', 'sc', 'bank', 'colomb']

def substrMethod(userInput, userData)
    newHash = Hash.new(0)
    userInput.downcase.split(" ").each {
        |userInputItem| userData.each {
            |userDataItem| if userInputItem.include? userDataItem
                newHash[userDataItem] += 1
            end
        }
    }
    newHash
end

puts substrMethod(bank, dictionary)