import random
import os

Phonemes = ['p', 't', 'k', 's', 'ɬ', 'h', 'm', 'n', 'j', 'w', 'a', 'i', 'u', 'e', 'aa', 'ii', 'uu', 'ee']
PhonemeWeights = (20, 20, 20, 18, 1, 14, 18, 18, 14, 14, 14, 14, 14, 14, 2, 2, 2, 2)
Consonants = ['p', 't', 'k', 's', 'ɬ', 'h', 'm', 'n', 'j', 'w']
ConsonantWeights = (20, 20, 20, 18, 14, 14, 18, 18, 14, 14)
Plosives = {'p', 't', 'k'}
Vowels = ('a', 'i', 'u', 'e', 'aa', 'ii', 'uu', 'ee')
Tones = {'low': '', 'high': '\u0301'}
ToneWeights = (3, 1)

# add random number of random segments to list/whatever
# any number of consonants in a row, but no adjacent vowels
# give tone randomly but following certain set rules
# print list/whatever

def GetRandomPhoneme():
    RandomPhoneme = [''.join(random.choices(Phonemes, weights=PhonemeWeights, k=1)), AssignTone()]
    return RandomPhoneme

def GetRandomConsonant():
    RandomConsonant = [''.join(random.choices(Consonants, weights=ConsonantWeights, k=1)), AssignTone()]
    return RandomConsonant

def AssignTone(ForceTone=''):
    if ForceTone != '':
        return Tones[ForceTone]
    else:
        return ''.join(random.choices(list(Tones.values()), weights=ToneWeights, k=1))

# def GenerateWord(length=2):
#     Word = []
#     i = 0
#     while i < length:
#         if len(Word) >= 1 and Word[-1] in Vowels:
#             Word.append(random.choice(Consonants))
#         else:
#             Word.append(random.choice(Phonemes))
#         # if len(Word) == 1 and Word[-1] in Plosives:
#         #     Word.append(AssignTone('high'))
#         # else:
#         #     Word.append(AssignTone())
#         i += 1
#     print(''.join(Word))

def GenerateWord(length=2):
    Word = []
    i = 0
    while i < length:
        if Word and Word[-1][0] in Vowels:
            Word.append(GetRandomConsonant())
        else:
            Word.append(GetRandomPhoneme())
        if Word[0][0] in Plosives:
            Word[0][1] = AssignTone('high')
        i += 1
    Generated = [''.join(x) for x in Word]
    print(''.join(Generated))

def GenerateWordList(amount=1):
    os.system('cls' if os.name == 'nt' else 'clear')
    WordList = []
    GeneratedWord = ''
    i = 0
    while i < amount:
        GeneratedWord = GenerateWord(random.randint(2,5))
        if GeneratedWord not in WordList:
            WordList.append(GeneratedWord)
        i += 1

GenerateWordList(20)