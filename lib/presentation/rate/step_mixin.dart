import 'package:ccr/domain/models/app_step.dart';
import 'package:ccr/domain/models/review.dart';

mixin StepMixin {
  List<AppStep> getListAppStep() {
    return [
      AppStep(
        index: 1,
        name: "Banheiro",
        points: 10,
        description:
            "Avalie condições do banheiro, manutenção, segurança, privacidade, limpeza, preço, etc",
        imgPath: "assets/icons/wc.svg",
        reviewType: ReviewType.bathroom,
      ),
      AppStep(
        index: 2,
        name: "Banheiro",
        points: 10,
        description:
            "Avalie condições do banheiro, manutenção, segurança, privacidade, limpeza, preço, etc",
        imgPath: "assets/icons/wc.svg",
        reviewType: ReviewType.sleep,
      ),
      AppStep(
        index: 3,
        name: "Banheiro",
        points: 10,
        description:
            "Avalie condições do banheiro, manutenção, segurança, privacidade, limpeza, preço, etc",
        imgPath: "assets/icons/wc.svg",
        reviewType: ReviewType.rest,
      ),
      AppStep(
        index: 4,
        name: "Banheiro",
        points: 10,
        description:
            "Avalie condições do banheiro, manutenção, segurança, privacidade, limpeza, preço, etc",
        imgPath: "assets/icons/wc.svg",
        reviewType: ReviewType.services,
      ),
      AppStep(
        index: 5,
        name: "Banheiro",
        points: 10,
        description:
            "Avalie condições do banheiro, manutenção, segurança, privacidade, limpeza, preço, etc",
        imgPath: "assets/icons/wc.svg",
        reviewType: ReviewType.food,
      ),
    ];
  }
}
