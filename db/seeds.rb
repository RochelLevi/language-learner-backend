rochel = User.create(username: "rochel", password: "rochel227")
kat = User.create(username: "kat", password: "kat11")

french = Language.create(name: "french")
spanish = Language.create(name: "spanish")
hebrew = Language.create(name: "hebrew")
greek = Language.create(name: "greek")

si = Word.create(name: "sí", english_translation: "yes", language_id: spanish.id)
hola = Word.create(name: "hola", english_translation: "hello", language_id: spanish.id)
bonita = Word.create(name: "bonita", english_translation: "pretty", language_id: spanish.id)
hombre = Word.create(name: "hombre", english_translation: "man", language_id: spanish.id)
nadar = Word.create(name: "nadar", english_translation: "to swim", language_id: spanish.id)
bailar = Word.create(name: "bailar", english_translation: "to dance", language_id: spanish.id)
cantar = Word.create(name: "cantar", english_translation: "to sing", language_id: spanish.id)
contento = Word.create(name: "contento", english_translation: "happy", language_id: spanish.id)
computadora = Word.create(name: "computadora", english_translation: "computer", language_id: spanish.id)
sombrero = Word.create(name: "sombrero", english_translation: "hat", language_id: spanish.id)
agua = Word.create(name: "agua", english_translation: "water", language_id: spanish.id)
silla = Word.create(name: "silla", english_translation: "chair", language_id: spanish.id)
papel = Word.create(name: "papel", english_translation: "paper", language_id: spanish.id)
lapiz = Word.create(name: "lápiz", english_translation: "pencil", language_id: spanish.id)
plato = Word.create(name: "plato", english_translation: "plate", language_id: spanish.id)

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
