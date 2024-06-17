import datetime

def get_dates():
    # from the beginning of the year until now
    dates = []
    first = datetime.date(datetime.date.today().year, 1, 1)

    for i in range((datetime.date.today()   - first).days + 1):
        dates.append(first + datetime.timedelta(days=i))

    # take only day,month
    dates = [date.strftime('%d,%m') for date in dates]
    
    return dates

if __name__ == '__main__':
    print(get_dates())
    print(len(get_dates()))