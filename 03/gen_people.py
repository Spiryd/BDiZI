import random
import faker
import datetime
import math

fake = faker.Faker(['pl_PL'])

month_lut = {18:list(range(81, 93)), 19:[str(i) if len(str(i)) == 2 else "0"+str(i) for i in range(1, 13)], 20:list(range(21, 33)), 21:list(range(41, 53)), 22:list(range(61, 73))}

def gen_name(gender):
    """generates a full name for a given gender

    Args:
        gender (str): {"M", "F"} M form male F for Female

    Returns:
        tuple(str): (first_name, last_name)
    """
    if gender == "M":
        first = fake.first_name_male()
        last = fake.last_name_male()
        return (first, last)
    elif gender == "F":
        first = fake.first_name_female()
        last = fake.last_name_female()
        return (first, last)
    else:
        print("Wrong Input")

def gen_pesel(gender, birth_date):
    """generates a PESEL for a given gender and birth date

    Args:
        gender (str): {"M", "F"} M form male F for Female
        birth_date (datetime.date): date of birth

    Returns:
        str: random PESEL for given values
    """
    pesel = ""
    year = birth_date.year
    month = birth_date.month
    day = birth_date.day
    month_key = math.floor(year/100)
    if len(str(year - (month_key*100))) == 1:
        pesel += ("0" + str(year - (month_key*100)))# two first numbers for year
    else:
        pesel += str(year - (month_key*100))# two first numbers for year
    pesel += str(month_lut[month_key][month - 1])# two next numbers for month
    #next two for day
    if day < 10:
        pesel += ("0" + str(day))
    else:
        pesel += str(day)    
    pesel += str(random.randint(100, 999))# id numers
    # gender nunmber
    if gender == "M":
        pesel += str(random.choice([i for i in range(0, 10) if i%2 != 0]))
    else:
        pesel += str(random.choice([i for i in range(0, 10) if i%2 == 0]))
    weights = [1, 3, 7, 9, 1, 3, 7, 9, 1, 3]
    control = 0
    for weight, value in zip(weights, pesel):
        temp = weight * int(value)
        if temp > 9:
            temp = temp - math.floor(temp/10)*10
        control += temp
    if control > 9:
        control = control - math.floor(control/10)*10
    else:
        control = 10 - control
    pesel += str(control)
    return pesel
    
def gen_person(gender, age_range):
    """generates a person for adding to a table in sql

    Args:
        gender (str): {"M", "F"} M form male F for Female
        age_range (list): list of two values age_range[0]=min_age and age_range[1]=max_age
    Returns:
        tuple(str): values as strings for generated person
    """
    birth_date  = fake.date_of_birth(minimum_age = age_range[0], maximum_age = age_range[1])
    name = gen_name(gender)
    return(gen_pesel(gender, birth_date), name[0], name[1], birth_date.isoformat(), gender)
    
def main():
    with open("ludzie.txt", 'w', encoding = 'utf-8') as file:
        genders = ["M", "F"]
        for i in range(5):
            file.write(str(gen_person(random.choice(genders), [0, 17])))
            file.write(", ")
        for i in range(45):
            file.write(str(gen_person(random.choice(genders), [18, 59])))
            file.write(", ")
        for i in range(5):
           file.write(str(gen_person(random.choice(genders), [60, 70])))
           file.write(", ")
            
if __name__ == '__main__':
    main()