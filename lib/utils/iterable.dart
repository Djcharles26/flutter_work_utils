extension IterableExt<T> on Iterable<T> {
  bool containsLambda(bool Function(T) lambda) {
    /// A method to get all values of a list that match with a method
    bool retval = false;

    forEach((element) {
      retval = retval || lambda(element);
    });

    return retval;
  }

  bool containsAll(Iterable<T> elements) {
    /// A method to check if all elements of a list exists in current List
    bool retval = true;

    for (T element in elements) {
      if (!contains(element)) {
        retval = false;
        break;
      }
    }

    return retval;
  }

  bool containsAny(Iterable<T> elements) { 
    /// A method to check if at least one elements of a list exists in current list
    bool retval = false;

    for (T element in elements) {
      if (contains(element)) {
        retval = true;
        break;
      }
    }

    return retval;
  }

  bool allLambda(bool Function(T) lambda) {
    /// A method to check if all elements in a current list satisfy a method
    bool retval = true;

    for (T element in this) {
      retval = retval && lambda(element);

      if (!retval) break;
    }

    return retval;
  }

  int apply(void Function(T) lambda, {bool ignoreExceptions = false}) {
    int appliedValues = 0;
    for (T element in this) {
      try {
        lambda(element);
        appliedValues++;
      } catch (error) {
        if (!ignoreExceptions) {
          rethrow;
        }
      }
    }

    return appliedValues;
  }
}
