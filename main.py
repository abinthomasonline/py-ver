## The code to be tested

if __name__ == "__main__":
    import sys
    import joblib
    import sklearn

    print(f"Running main.py with python=={sys.version.split()[0]}, joblib=={joblib.__version__}, scikit-learn=={sklearn.__version__}")
