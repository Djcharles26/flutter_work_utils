extension IterableExt<T> on Iterable<T> {
  bool containsLambda(bool Function(T) lambda) {
    bool retval = false;

    forEach((element) {
      retval = retval || lambda(element);
    });

    return retval;
  }

  bool containsAll(Iterable<T> elements) {
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
