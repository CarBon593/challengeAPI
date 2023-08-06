import com.intuit.karate.junit5.Karate;

public class karateRunner {
    @Karate.Test
    Karate testTags() {
        return Karate.run("classpath:features").tags("@ChallengeAPI").relativeTo(getClass());
    }


}

