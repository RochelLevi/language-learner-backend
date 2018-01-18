rochel = User.create(username: "rochel", password: "rochel227")
kat = User.create(username: "kat", password: "kat11")

french = Language.create(name: "french")
spanish = Language.create(name: "spanish")
hebrew = Language.create(name: "hebrew")
greek = Language.create(name: "greek")

si = Word.create(name: "sí", english_translation: "yes", language_id: spanish.id)
hola = Word.create(name: "hola", english_translation: "hello", language_id: spanish.id)
bonita = Word.create(name: "bonita", english_translation: "pretty", language_id: spanish.id)

ken = Word.create(name: "כן", english_translation: "yes", language_id: hebrew.id)
shalom = Word.create(name: "שלום", english_translation: "hello", language_id: hebrew.id)
yafeh = Word.create(name: "יפה", english_translation: "pretty", language_id: hebrew.id)

rochel_yafeh = LearnedWord.create(user_id: rochel.id, word_id: yafeh.id)
rochel_shalom = LearnedWord.create(user_id: rochel.id, word_id: shalom.id)
rochel_si = LearnedWord.create(user_id: rochel.id, word_id: si.id)

kat_hola = LearnedWord.create(user_id: kat.id, word_id: hola.id)
kat_si = LearnedWord.create(user_id: kat.id, word_id: si.id)


rochel_hebrew_points = Point.create(total: 2, user_id: rochel.id, language_id: hebrew.id)
rochel_spanish_points = Point.create(total: 1, user_id: rochel.id, language_id: spanish.id)
kat_spanish_points = Point.create(total: 2, user_id: kat.id, language_id: spanish.id)
