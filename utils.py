import pandas as pd

def load_gnad():
    with open('./train.csv', 'r') as fh:
        data = (line.split(';', 1) for line in fh)
        gnad_train = pd.DataFrame.from_records(data, columns=['category', 'text'])
    
    with open('./test.csv', 'r') as fh:
        data = (line.split(';', 1) for line in fh)
        gnad_test = pd.DataFrame.from_records(data, columns=['category', 'text'])
        
    return gnad_train, gnad_test