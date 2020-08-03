<?php
declare(strict_types=1);

namespace Tests\User;

use Tests\BaseTest;

final class CreateUserActionTest extends BaseTest
{
	public function testUserSuccesCreateNewUser()
	{
		$endPoint = [
			"endpoint" => "/users",
			"method" => "POST",
			"statusCode" => 201,
			"headers" => null,
		];
		$randomNumber = rand(10,100);
        $params = [
        	"email" => "user-".$randomNumber."@random.com",
            "name" => "Random User",
            "password" => "ThisIsAPassword5?",
            "gender" => "male",
            "age" => "20",
            "interest_gender" => "female",
            "latitude" => "51.530566",
            "longitude" => "-0.121013",
        ];
        $endPoint["endpoint"] = $endPoint["endpoint"]."?".http_build_query($params);
        
        $this->endpointSuccess($endPoint["endpoint"], $endPoint["method"], $endPoint["statusCode"], $endPoint["headers"]);
	}

	public function testUserFailCreateNewPhotoDueWrongToken()
	{
		$endPoint = [
			"endpoint" => "/users",
			"method" => "POST",
			"statusCode" => 401,
			"headers" => null,
		];
		$randomNumber = rand(10,100);
        $params = [
        	"email" => "hansolo@pilot.com",
            "name" => "Random User",
            "password" => "ThisIsAPassword5?",
            "gender" => "male",
            "age" => "20",
            "interest_gender" => "female",
            "latitude" => "51.530566",
            "longitude" => "-0.121013",
        ];
        $endPoint["endpoint"] = $endPoint["endpoint"]."?".http_build_query($params);
        
        $this->endpointFail($endPoint["endpoint"], $endPoint["method"], $endPoint["statusCode"], $endPoint["headers"]);
	}
}