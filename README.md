# Embracing Flutter with an Android Mindset
![enter image description here](https://miro.medium.com/v2/resize:fit:3280/format:webp/1*Y8KCMJt0U0hB773FOeZVLw.png)

As a native Android developer with no prior experience with Flutter, I decided to explore how it would be to build a Flutter project with an Android mindset.

I wanted to see how easy or hard it would be to come up with a full project in as little time as possible, while following Android development practices that I am familiar with, such as:

-   breaking down the project into smaller, more manageable modules
-   promoting the use of clean architecture principles, separating concerns and dependencies to create a maintainable and scalable codebase
-   providing a well-structured navigation system
-   implementing a Single Source Of Truth strategy to ensure consistency and integrity of data across the application
-   incorporating some reactive programming techniques to optimize data flow and streamline asynchronous operations
-   encapsulating dependencies and injecting them into the code at runtime
-   supporting unit tests to ensure the code is working correctly
-   managing the state of the app in a consistent and predictable way

I also wanted to compare the result with standard Flutter projects and explore the framework’s support for native multiplatform UI look.

### Learning the basics

I want to clarify that I am not a master of this framework, and that was never my intention. My goal was to acquire enough knowledge to code confidently and become self-sufficient in that regard.

For my learning journey, I found the [Official Dart tutorial](https://dart.dev/tutorials) and [Flutter codelabs](https://docs.flutter.dev/codelabs) to be the most helpful starting points.

However, I did find the Dart syntax to be a bit verbose compared to what I was used to in Kotlin. The absence of some common syntactic sugar features led me to explore a few libraries that could enhance the compiler capabilities, although this came with the trade-off of code generation cons.

Regarding asynchronous operations, while Kotlin relies on coroutines, Dart handles operations over deferred values using [Future](https://dart.dev/codelabs/async-await#what-is-a-future). Additionally, for observable operations, Coroutine Flow is replaced by [Dart’s Stream API](https://dart.dev/tutorials/language/streams).

### About the pet project

This project is the boring master-detail like app that allows users to query university degrees recognized in Germany. The app begins with a splash screen, followed by a screen that displays a list of countries with degrees recognized in Germany. Users can filter the list of countries by name. Upon selecting a country, the app displays a new view containing a list of universities supported by that particular country.

[https://github.com/lucas-dev/flutter-clean-architecture-poc](https://github.com/lucas-dev/flutter-clean-architecture-poc)

### The building process

After familiarizing myself with the most important concepts, I quickly jumped into the building process. While I could have spent more time improving my skills in Dart and the Flutter framework, I knew myself well enough to realize that excessive preparation would lead to inevitably procrastination.

To avoid the common pitfall of coding before planning, especially with unfamiliar technologies, I began by carefully planning the layers and adopting a modularization approach. I wanted to follow the classic clean architecture approach to ensure a maintainable and scalable codebase.

For the data layers, I explored network and caching solutions that align with Android development practices.

For the presentation layer, I chose the Bloc design pattern. Although there are other solutions more akin to ViewModels, I opted for [BLoC](https://bloclibrary.dev/) because of its popularity and minimal differences from the way I use to work with ViewModels, ensuring familiarity and wider community support.

Regarding dependency injection, I selected the most widespread framework, [GetIt](https://pub.dev/packages/get_it), and complemented it with a library called [Injectable](https://pub.dev/packages/injectable). This library gives GetIt a look similar to Hilt.

Considering the importance of testing in any serious project, I made sure to prioritize unit testing as a must-have aspect of the development process.

In conclusion, I want to emphasize that thorough planning before diving into coding, especially in exploratory projects, can be the decisive factor between total failure and success. Taking the time to plan and make informed decisions pays off in the long run.

### Modularization

Because I planned the project before coding, I had a clear idea of how to structure everything. I wanted to avoid the predominant single-module approach that I have seen in most Flutter projects. Instead, I wanted to favor separation of concerns through layers by resorting to the popular Clean Architecture approach that I am used to in Android development.

In Flutter, the equivalent of modules in Android is called [packages](https://dart.dev/guides/libraries/create-packages#organizing-a-library-package), and the graph below illustrates the interconnectivity of these packages within the app.

![](https://cdn-images-1.medium.com/max/2560/1*0I6IJ47r5cpPnQvI5GIPYA.png)

The **app** module is the entry point of the application. Every **feature** is also isolated into a separate module. There are also **core** modules and **common** modules.

While this structure might seem like overkill for such a small project, it opens up possibilities for handling more complex scenarios in the future. Even though there might be some additional overhead introduced with this mono-repo structure, leveraging convenient CLI tools like [Melos](https://pub.dev/packages/melos) can greatly simplify management tasks. In my experience, embracing this modular approach early on ensures scalability and flexibility as the project grows, making it a worthwhile investment in the long run.

### Data Layer

This layer is responsible for fetching and storing data. It is designed to be flexible and reusable, as the repositories are written in a way that they can be easily swapped out with different data sources. This is achieved by using repository interfaces [see [1](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/data/lib/src/sources/countries_cache.dart)–[2](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/data/lib/src/sources/countries_remote.dart)], which are then implemented by the network and cache layers, respectively.

The network layer handles networking operations. I am using the [Dio HTTP client](https://pub.dev/packages/dio) + [Retrofit for Dart](https://pub.dev/packages/retrofit) library to consume REST APIs in the same way as Android. However, for this particular app, I had to explore the concept of web scraping to extract data from the Anabin page. I recommend you to check the way I am using [interceptors](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/remote/lib/src/interceptor/countries_interceptor.dart) and [converters](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/remote/lib/src/response/countries_response_converter.dart) to map HTML into data entities.

As for the cache layer, I am used to operating databases with the Room library in Android. I found the [Floor](https://pub.dev/packages/floor) library to be the more similar alternative in Flutter.

I am using a [Single Source of Truth](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/data/lib/src/countries_repository_impl.dart) strategy to ensure data consistency. For this, I opted to use a cache expiration policy, so that we only hit the network after the expiration rule is met. Otherwise, the user is presented with cached data.

### Domain Layer

The domain layer serves as a mediator in the data management process. It defines the [repository interface](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/domain/lib/src/repository/countries_repository.dart), which specifies operations for data handling. This interface is then [implemented in the data layer](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/data/lib/src/countries_repository_impl.dart), where actual data operations take place. The domain layer also contains [interactor](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/domain/lib/src/interactors/get_countries_usecase.dart) classes, which represent **use cases** that package the resulting data into asynchronous [results](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/common/domain/lib/src/result.dart), making it easy for the [presentation layer to consume](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/presentation/lib/src/countries_bloc.dart).

### Presentation Layer

In Android, I prefer the ViewModel-based approach for the Presentation layer. The ViewModel dispatches UI events, handled by domain layer’s interactor classes, which return Result data. This data is then mapped to appropriate UI states and processed within the UI layer.

In Flutter, this approach can be achieved in various ways, and one of the most widely adopted solutions is the [BLoC library](https://pub.dev/packages/flutter_bloc). The BLoC pattern revolves around a [Business Logic Component](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/presentation/lib/src/countries_bloc.dart) that manages application [events](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/presentation/lib/src/countries_event.dart) and [states](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/presentation/lib/src/countries_state.dart). The BLoC listens for events, updates the application state accordingly, and [emits the new state to the UI](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/ui/lib/src/widgets/countries_bloc_builder.dart), which in turn updates itself to reflect the changes.

This architecture ensures a clean separation of concerns and facilitates reactive data flow, resulting in a more maintainable and scalable app.

### Navigation

Android Jetpack’s Navigation component offers a declarative approach to handle navigation on Android. [Flutter’s Navigator pages API](https://docs.flutter.dev/ui/navigation) paired with the [Flow Builder library](https://pub.dev/packages/flow_builder) offers a powerful alternative for routing based on state changes within a bloc.

By defining [interfaces within feature modules](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/navigation/lib/src/countries_navigation.dart) and [implementing them in the core/navigation](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/core/navigation/lib/src/countries_navigation_impl.dart) package, we ensure a clean and decoupled architecture, eliminating direct dependencies between features.

Flow Builder further simplifies the process with its flexible and declarative API, streamlining the management of flows in the app.

### UI

In the UI layer, we handle all aspects related to widgets, page rendering, and scaffolding. The layer dispatches [events](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/presentation/lib/src/countries_event.dart) to the [bloc componen](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/presentation/lib/src/countries_bloc.dart)t in the Presentation layer, which, in turn, emits UI [states](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/presentation/lib/src/countries_state.dart). These states are observed within the [blocbuilder component](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/ui/lib/src/widgets/countries_bloc_builder.dart) (UI layer), facilitating seamless UI updates and rebuilds.

Flutter’s framework offers convenient resources to ensure widgets adapt to the platform’s look and feel. The [PlatformWidget](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/common/ui/lib/src/platform_widget.dart) abstraction enables widget rendering that aligns with the specific platform the app runs on. This ensures a consistent and native-like user experience across different platforms, making the app feel more familiar and user-friendly.

### DI

When it comes to DI handling, the two widely adopted solutions in modern Android development are Koin, which follows a service locator approach, and Dagger Hilt, which offers compile-time injection.

In the Flutter ecosystem, various DI frameworks exist, but I think that the two most popular choices are [GetIt](https://pub.dev/packages/get_it), which acts as a service locator and performs injection at runtime, and [Injectable](https://pub.dev/packages/injectable), a code generator for GetIt that “brings” the Hilt experience to Flutter. This project combines both libraries to ensure decent dependency management. It leverages GetIt for runtime injection and employs Injectable’s code generation capabilities.

The DI setup in this project explores the concept of [Scopes](https://pub.dev/packages/injectable#using-scopes) and [Modules](https://pub.dev/packages/injectable#including-micropackages-and-external-modules) to improve performance and enhance code maintainability and scalability.

### Testing

I found Flutter’s support for testing to be great. There are a number of well-supported testing packages available that provide a wide range of features for testing Flutter apps, including unit tests, widget tests, and integration tests.

In this project, my primary focus was on exploring [unit testing](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/data/test/countries_repository_impl_test.dart) for [BLoC](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/presentation/test/countries_bloc_test.dart) and [widget](https://github.com/lucas-dev/flutter-clean-architecture-poc/blob/main/countries/ui/test/widgets/countries_view_test.dart) components.

### Conclusion

The way I always saw Flutter was as a sort of panacea for startups. A powerful framework with strong community support. Its promise of creating a single code base for multiplatform projects, with a fast and straightforward setup, while delivering a native feel, is truly appealing. I’ve noticed that Flutter is often more popular among entry-level developers. The prevalence of low-quality code in public GitHub repositories is significant.

Given my background in native Android development and zero experience with Flutter, my goal was to explore how it would be like to create a Flutter project with an Android mindset.

As an exploratory project, there are several todos to be addressed in the future. Enhancing UI states handling to cover more use cases, improving UI management, and expanding test coverage to be more exhaustive are essential areas for improvement. Additionally, integrating with CI/CD and centralizing dependency management are important tasks that need attention.

Despite these pending tasks, I am overall happy with the outcome of this project. Although I might not have followed the typical Flutter approach, I believe the result is acceptable in terms of clean architecture, ease of understanding, and is considerably better than many regular Flutter projects found on GitHub. It has been a valuable learning experience, and I am satisfied with the progress made so far.

However, I am most satisfied with the accomplishment of having created a code-wise decent full project in a short timeframe without being defeated by procrastination.

From this experience, I feel that I can offer some valuable advice: select an architecture that resonates with you, become familiar and comfortable with it, and then apply it to any new challenge. Additionally, effective planning is crucial; outline your project, stick to the plan, and keep your goals aligned with the established plan. By adhering to these principles, you can approach coding with a sense of purpose and achieve successful outcomes in your future endeavors.
