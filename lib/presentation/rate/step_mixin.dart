import 'package:ccr/domain/models/app_step.dart';
import 'package:ccr/domain/models/review.dart';

mixin StepMixin {
  List<AppStep> getListAppStep() {
//     AppStep( index: 1, name: "Alimentação", points: 10, description: "Avalie preço, variedade de cardápio, espaço, higiene, etc", imgPath: "assets/icons/wc.svg", reviewType: ReviewType.bathroom, ),

// AppStep( index: 2, name: "Banheiros e banho", points: 10, description: "Avalie condições do banheiro, manutenção, segurança, privacidade, limpeza, preço, etc", imgPath: "assets/icons/wc.svg", reviewType: ReviewType.bathroom, ),

// AppStep( index: 3, name: "Pernoite", points: 10, description: "Avalie conforto, preço, segurança, atendimento, etc", imgPath: "assets/icons/wc.svg", reviewType: ReviewType.bathroom, ),

// AppStep( index: 4, name: "Praça de descanso", points: 10, description: "Avalie conforto, disponibilidade de recursos, tranquilidade, informações, etc", imgPath: "assets/icons/wc.svg", reviewType: ReviewType.bathroom, ),

// AppStep( index: 5, name: "Segurança", points: 10, description: “Avalie monitoramento, confiança, etc", imgPath: "assets/icons/wc.svg", reviewType: ReviewType.bathroom, ),

// AppStep( index: 6, name: "Serviços e Manutenção", points: 10, description: "Avalie variedade de serviços, atendimento, preço de combustível, etc”, imgPath: "assets/icons/wc.svg", reviewType: ReviewType.bathroom, ),
    return [
      AppStep(
        index: 1,
        name: "Alimentação",
        points: 10,
        description:
            "Avalie preço, variedade de cardápio, espaço, higiene, etc",
        imgPath: "assets/images/alimentacao.png",
        reviewType: ReviewType.food,
      ),
      AppStep(
        index: 2,
        name: "Banheiros e banho",
        points: 10,
        description:
            "Avalie condições do banheiro, manutenção, segurança, privacidade, limpeza, preço, etc",
        imgPath: "assets/images/banho.svg",
        reviewType: ReviewType.bathroom,
      ),
      AppStep(
        index: 3,
        name: "Pernoite",
        points: 10,
        description: "Avalie conforto, preço, segurança, atendimento, etc",
        imgPath: "assets/images/pernoite.svg",
        reviewType: ReviewType.sleep,
      ),
      AppStep(
        index: 4,
        name: "Praça de descanso",
        points: 10,
        description:
            "Avalie conforto, disponibilidade de recursos, tranquilidade, informações, etc",
        imgPath: "assets/images/descanso.svg",
        reviewType: ReviewType.rest,
      ),
      AppStep(
        index: 5,
        name: "Segurança",
        points: 10,
        description: "Avalie monitoramento, confiança, etc",
        imgPath: "assets/images/seguranca.svg",
        reviewType: ReviewType.security,
      ),
      AppStep(
        index: 6,
        name: "Serviços e Manutenção",
        points: 10,
        description:
            "Avalie variedade de serviços, atendimento, preço de combustível, etc",
        imgPath: "assets/images/servicos.svg",
        reviewType: ReviewType.services,
      ),
    ];
  }
}
