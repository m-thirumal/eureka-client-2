/**
 * 
 */
package in.thirumal.controller;

import java.util.IntSummaryStatistics;
import java.util.stream.IntStream;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author thirumal
 *
 */
@RestController
@RequestMapping("/client2")
public class SampleController {

	@GetMapping("")
	public IntSummaryStatistics getStatistic() {
		System.out.println("Statistic:-");
		return IntStream.range(0, 50).summaryStatistics();
	}
}
