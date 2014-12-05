MultipleStoryboardsSample
=========================

Чем опасно использование одной огромной storyboard в проекте?
  - Тесная связанность всех экранов,
  - Запутанность логики переходов прямо пропорциональна количеству экранов,
  - Совместная работа над интерфейсом для двух и более разработчиков превращается в боль.

Решение проблемы достаточно простое:
  - **Выделяем** на карте экранов приложения общие User Stories,
  - **Экстраполируем** их на контроллеры Main.storyboard,
  - **Переносим** эти группы в отдельные storyboards.
  
Для реализации навигации между несколькими storyboards используется **MSALinkedStoryboardSegue** - кастомная segue, в identifier которой задаются все необходимые для перехода данные. Кроме того, для освобождения View Controller'ов от лишних обязанностей вся навигация осуществляется при помощи роутеров. Все, что View Controller знает о навигации:
```objc
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.router showBreedViewControllerFromSourceController:self
                              withCatBreed:self.breedsArray[indexPath.row]];
}
```

Помимо этого в проекте рассмотрены следующие вопросы:
  - Использование **Dependency Injection** для развязывания контроллеров и реализаций роутеров,
  - Работа с **Tab-based приложением** в контексте использования нескольких storyboards,
  - Простое **переиспользование экранов** из xib на нескольких storyboards,
  - **Автоматическая генерация констант** для segue identifiers.
  
### Текущая версия
1.0

### Используемые компоненты
* [AFNetworking](https://github.com/AFNetworking/AFNetworking),
* [Typhoon](http://www.typhoonframework.org/).
* UIViewController+SegueInfo by [@ilyapuchka](https://github.com/ilyapuchka)
